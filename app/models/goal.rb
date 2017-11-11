# == Schema Information
#
# Table name: goals
#
#  id                :integer          not null, primary key
#  perspective       :string
#  description       :string
#  generalIndicator  :string
#  specificIndicator :string
#  formula           :string
#  weight            :integer
#  typeGoal          :integer
#  measure           :integer
#  num_periods       :integer
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Goal < ApplicationRecord

  belongs_to  :user
  has_many    :periods
  accepts_nested_attributes_for :periods

  validates_presence_of :perspective, :description, :generalIndicator,
   :specificIndicator, :formula, :weight, :typeGoal, :measure

  def self.get_goals_from_user(user)
    Goal.where(user_id: user.id)
  end

end
