class CreateSystemes < ActiveRecord::Migration[6.1]
  def change
    create_table :systemes do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
