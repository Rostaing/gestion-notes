class AddDeletedAtToFilieres < ActiveRecord::Migration[6.1]
  def change
    add_column :filieres, :deleted_at, :datetime
    add_index :filieres, :deleted_at
  end
end
