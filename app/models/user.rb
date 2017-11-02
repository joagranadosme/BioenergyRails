class User < ApplicationRecord

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :document
  validates_uniqueness_of :email, :document

  has_one :departament
  has_one :role
  has_one :charge
  has_one :area
  has_one :boss, :class_name => 'User'
  #belongs_to :boss, :class_name => 'User'

  def getBosses
    User.all
  end

  def self.authenticate(document, password)
    user = find_by_document(document)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
