class AddDeletedAtToSystemes < ActiveRecord::Migration[6.1]
  def change
    add_column :systemes, :deleted_at, :datetime
    add_index :systemes, :deleted_at
  end
end
