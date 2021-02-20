class AddDeletedAtToEnseignants < ActiveRecord::Migration[6.1]
  def change
    add_column :enseignants, :deleted_at, :datetime
    add_index :enseignants, :deleted_at
  end
end
