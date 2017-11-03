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
#  type              :integer
#  measure           :integer
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Goal < ApplicationRecord

  belongs_to :user

end
