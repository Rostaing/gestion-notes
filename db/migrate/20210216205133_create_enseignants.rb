class CreateEnseignants < ActiveRecord::Migration[6.1]
  def change
    create_table :enseignants do |t|
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
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
