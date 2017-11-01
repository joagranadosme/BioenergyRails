class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.integer :document
      t.integer :idRol
      t.integer :idPosition
      t.integer :idDepartament
      t.integer :idArea
      t.integer :idBoss
      t.integer :step

      t.string  :password_hash
      t.string  :password_salt

      t.timestamps
    end
  end
end
