class AddDeletedAtToEtudiants < ActiveRecord::Migration[6.1]
  def change
    add_column :etudiants, :deleted_at, :datetime
    add_index :etudiants, :deleted_at
  end
end
