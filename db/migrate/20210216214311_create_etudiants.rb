class CreateEtudiants < ActiveRecord::Migration[6.1]
  def change
    create_table :etudiants do |t|
      t.string :matricule
      t.string :nom
      t.string :prenom
      t.string :sexe
      t.string :email
      t.string :telephone
      t.string :bp
      t.date :date_naissance
      t.string :lieu_naissance
      t.string :rue
      t.string :quartier
      t.references :cla, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :anneeacademique, null: false, foreign_key: true

      t.timestamps
    end
  end
end
