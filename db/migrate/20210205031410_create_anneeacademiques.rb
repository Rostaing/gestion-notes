class CreateAnneeacademiques < ActiveRecord::Migration[6.1]
  def change
    create_table :anneeacademiques do |t|
      t.string :libelle
      t.date :date_debut
      t.date :date_fin

      t.timestamps
    end
  end
end
