class AddDeletedAtToClasMatieres < ActiveRecord::Migration[6.1]
  def change
    add_column :clas_matieres, :deleted_at, :datetime
    add_index :clas_matieres, :deleted_at
  end
end
