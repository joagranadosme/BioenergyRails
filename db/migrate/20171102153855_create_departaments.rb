class CreateDepartaments < ActiveRecord::Migration[5.1]
  def change
    create_table :departaments do |t|
      t.string :area
      t.integer :user_id

      t.timestamps
    end
    add_index :departaments, :user_id
  end
end
