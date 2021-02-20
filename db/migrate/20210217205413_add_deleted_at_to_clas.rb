class AddDeletedAtToClas < ActiveRecord::Migration[6.1]
  def change
    add_column :clas, :deleted_at, :datetime
    add_index :clas, :deleted_at
  end
end
