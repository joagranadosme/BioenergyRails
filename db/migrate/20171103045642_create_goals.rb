class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string  :perspective
      t.string  :description
      t.string  :generalIndicator
      t.string  :specificIndicator
      t.string  :formula
      t.integer :weight
      t.integer :typeGoal
      t.integer :measure
      t.integer :num_periods

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
