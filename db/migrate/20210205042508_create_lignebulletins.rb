class CreateLignebulletins < ActiveRecord::Migration[6.1]
  def change
    create_table :lignebulletins do |t|
      t.string :matiere
      t.integer :coefficient
      t.float :moyenne_clas
      t.float :moyenne_etudiant
      t.references :bulletin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
