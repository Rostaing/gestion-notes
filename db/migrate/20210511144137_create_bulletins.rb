class CreateBulletins < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletins do |t|
      t.references :etudiant, null: false, foreign_key: true
      t.date :date_edition
      t.date :date_retrait
      t.float :moyenne_etudiant
      t.float :moyenne_max_classe
      t.float :moyenne_min_classe
      t.integer :effectif_classe
      t.integer :rang_etudiant
      t.string :decision_conseil_prof

      t.timestamps
    end
  end
end
