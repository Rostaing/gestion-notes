class CreateClasMatieres < ActiveRecord::Migration[6.1]
  def change
    create_table :clas_matieres do |t|
      t.references :cla, null: false, foreign_key: true
      t.references :matiere, null: false, foreign_key: true

      t.timestamps
    end
  end
end
