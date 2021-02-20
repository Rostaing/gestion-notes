class AddDeletedAtToBulletins < ActiveRecord::Migration[6.1]
  def change
    add_column :bulletins, :deleted_at, :datetime
    add_index :bulletins, :deleted_at
  end
end
