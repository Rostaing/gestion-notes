class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.date :date_evaluation
      t.references :matiere, null: false, foreign_key: true
      t.references :typeevaluation, null: false, foreign_key: true
      t.references :anneeacademique, null: false, foreign_key: true

      t.timestamps
    end
  end
end
