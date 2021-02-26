class AddNotementionToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :notemention, :string
  end
end
