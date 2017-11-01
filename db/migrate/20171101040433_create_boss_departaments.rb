class CreateBossDepartaments < ActiveRecord::Migration[5.1]
  def change
    create_table :boss_departaments do |t|
      t.integer :idBoss
      t.integer :idDepartament

      t.timestamps
    end
  end
end
