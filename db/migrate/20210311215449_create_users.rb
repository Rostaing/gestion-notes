class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :sexe
      t.string :email
      t.string :password_digest
      t.string :matricule
      t.string :telephone
      t.string :bp
      t.date :datenaissance
      t.string :lieunaissance
      t.string :quartier
      t.references :country, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
