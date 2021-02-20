class EnsClasMatiere < ApplicationRecord
  acts_as_paranoid
  belongs_to :anneeacademique
  belongs_to :enseignant
  belongs_to :cla
  belongs_to :matiere
end
