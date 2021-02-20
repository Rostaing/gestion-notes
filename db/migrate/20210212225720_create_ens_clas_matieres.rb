class CreateEnsClasMatieres < ActiveRecord::Migration[6.1]
  def change
    create_table :ens_clas_matieres do |t|
      t.references :anneeacademique, null: false, foreign_key: true
      t.references :enseignant, null: false, foreign_key: true
      t.references :cla, null: false, foreign_key: true
      t.references :matiere, null: false, foreign_key: true

      t.timestamps
    end
  end
end
