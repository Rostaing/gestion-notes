class CreateMentions < ActiveRecord::Migration[6.1]
  def change
    create_table :mentions do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
