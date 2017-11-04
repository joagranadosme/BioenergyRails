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

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
