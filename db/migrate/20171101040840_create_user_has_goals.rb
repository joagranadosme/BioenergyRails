class CreateUserHasGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :user_has_goals do |t|
      t.integer :idUser
      t.integer :idGoal
      t.integer :idPeriod

      t.timestamps
    end
  end
end
