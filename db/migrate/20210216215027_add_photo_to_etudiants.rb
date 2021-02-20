class AddPhotoToEtudiants < ActiveRecord::Migration[6.1]
  def change
    add_column :etudiants, :photo, :string
  end
end
