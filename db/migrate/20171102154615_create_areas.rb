class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
