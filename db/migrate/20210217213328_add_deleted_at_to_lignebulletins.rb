class AddDeletedAtToLignebulletins < ActiveRecord::Migration[6.1]
  def change
    add_column :lignebulletins, :deleted_at, :datetime
    add_index :lignebulletins, :deleted_at
  end
end
