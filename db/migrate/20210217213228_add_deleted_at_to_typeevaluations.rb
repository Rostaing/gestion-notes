class AddDeletedAtToTypeevaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :typeevaluations, :deleted_at, :datetime
    add_index :typeevaluations, :deleted_at
  end
end
