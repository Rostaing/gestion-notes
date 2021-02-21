class AddStatutToAnneeacademiques < ActiveRecord::Migration[6.1]
  def change
    add_column :anneeacademiques, :statut, :string, null: false, default: "En cours"
  end
end
