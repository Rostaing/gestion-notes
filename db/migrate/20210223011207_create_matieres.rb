class CreateMatieres < ActiveRecord::Migration[6.1]
  def change
    create_table :matieres do |t|
      t.string :code
      t.string :libelle
      t.integer :coefficient
      # t.references :cla, null: false, foreign_key: true
      # t.references :enseignant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
