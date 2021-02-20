class AddDeletedAtToAnneeacademiques < ActiveRecord::Migration[6.1]
  def change
    add_column :anneeacademiques, :deleted_at, :datetime
    add_index :anneeacademiques, :deleted_at
  end
end
