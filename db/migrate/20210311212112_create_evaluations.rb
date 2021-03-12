class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.date :date_evaluation
      t.string :typeevaluation
      t.references :cla, null: false, foreign_key: true
      t.references :matiere, null: false, foreign_key: true
      t.references :anneeacademique, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
