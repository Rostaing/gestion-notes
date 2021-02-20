class AddStatusToAnneeacademique < ActiveRecord::Migration[6.1]
  def change
    add_column :anneeacademiques, :status, :integer, :null => false, :default => 0
    add_column :anneeacademiques, :locale, :integer, :null => false, :default => 0
  end
end
