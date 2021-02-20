class CreateTypeevaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :typeevaluations do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
