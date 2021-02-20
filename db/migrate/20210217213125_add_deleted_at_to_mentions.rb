class AddDeletedAtToMentions < ActiveRecord::Migration[6.1]
  def change
    add_column :mentions, :deleted_at, :datetime
    add_index :mentions, :deleted_at
  end
end
