class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.float :valeur
      t.references :etudiant, null: false, foreign_key: true
      t.references :evaluation, null: false, foreign_key: true
      # t.references :mention, null: false, foreign_key: true

      t.timestamps
    end
  end
end
