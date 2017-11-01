class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :perspective
      t.string :description
      t.string :gIndicator
      t.string :sIndicator
      t.string :formula
      t.string :unit
      t.integer :weight
      t.integer :type
      t.string :measure

      t.timestamps
    end
  end
end
