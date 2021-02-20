class CreateMatieres < ActiveRecord::Migration[6.1]
  def change
    create_table :matieres do |t|
      t.string :code
      t.string :libelle
      t.integer :coefficient

      t.timestamps
    end
  end
end
