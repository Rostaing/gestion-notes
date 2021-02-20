class AddPhotoToEnseignants < ActiveRecord::Migration[6.1]
  def change
    add_column :enseignants, :photo, :string
  end
end
