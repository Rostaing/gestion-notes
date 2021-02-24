class EnsClasMatiere < ApplicationRecord
  acts_as_paranoid
  has_many :evaluations, dependent: :destroy
  belongs_to :anneeacademique
  belongs_to :enseignant
  belongs_to :cla
  belongs_to :matiere 
end
