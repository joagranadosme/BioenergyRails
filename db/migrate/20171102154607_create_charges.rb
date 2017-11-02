class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :charges, :user_id
  end
end
