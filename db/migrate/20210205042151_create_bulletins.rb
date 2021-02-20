class CreateBulletins < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletins do |t|
      t.date :date_edition
      t.date :date_retrait
      t.float :moyenne_etudiant
      t.float :moyenne_max_clas
      t.float :moyenne_min_clas
      t.integer :effectif_clas
      t.integer :rang_etudiant
      t.string :decision_conseil_prof
      t.references :etudiant, null: false, foreign_key: true
      t.references :mention, null: false, foreign_key: true

      t.timestamps
    end
  end
end
