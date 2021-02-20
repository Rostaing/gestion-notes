class CreateFilieres < ActiveRecord::Migration[6.1]
  def change
    create_table :filieres do |t|
      t.string :code
      t.string :libelle
      t.references :systeme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
