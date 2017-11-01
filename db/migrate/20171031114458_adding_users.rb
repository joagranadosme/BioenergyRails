class AddingUsers < ActiveRecord::Migration[5.1]

  def change
    User.new(name: "Jonathan Granados", email: "jgranadosmendez@gmail.com", document: 1032459412, password: "12345678", password_confirmation: "12345678").save
    User.new(name: "Test1", email: "test1@gmail.com", document: 1234, password: "12345678", password_confirmation: "12345678").save
    User.new(name: "Test2", email: "test2@gmail.com", document: 5678, password: "12345678", password_confirmation: "12345678").save
  end

end
