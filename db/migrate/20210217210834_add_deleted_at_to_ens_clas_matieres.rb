class AddDeletedAtToEnsClasMatieres < ActiveRecord::Migration[6.1]
  def change
    add_column :ens_clas_matieres, :deleted_at, :datetime
    add_index :ens_clas_matieres, :deleted_at
  end
end
