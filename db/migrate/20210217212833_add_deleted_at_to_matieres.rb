class AddDeletedAtToMatieres < ActiveRecord::Migration[6.1]
  def change
    add_column :matieres, :deleted_at, :datetime
    add_index :matieres, :deleted_at
  end
end
