class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :roles, :user_id
  end
end
