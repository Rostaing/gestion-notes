class AddSexeToEnseignants < ActiveRecord::Migration[6.1]
  def change
    add_column :enseignants, :sexe, :string, null: false, default: ""
  end
end
