class CreatePermissionUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :permission_users do |t|
      t.references :permission, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
