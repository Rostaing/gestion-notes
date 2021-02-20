class CreateClas < ActiveRecord::Migration[6.1]
  def change
    create_table :clas do |t|
      t.string :code
      t.string :libelle
      t.references :filiere, null: false, foreign_key: true

      t.timestamps
    end
  end
end
