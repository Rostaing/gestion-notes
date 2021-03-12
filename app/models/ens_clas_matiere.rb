class EnsClasMatiere < ApplicationRecord
  belongs_to :user
  belongs_to :cla
  belongs_to :matiere
  belongs_to :anneeacademique
end
