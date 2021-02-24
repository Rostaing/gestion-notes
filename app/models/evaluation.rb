class Evaluation < ApplicationRecord
  acts_as_paranoid
  validates :date_evaluation, :typeevaluation, presence: true
  belongs_to :cla
  belongs_to :matiere
  belongs_to :enseignant
  belongs_to :anneeacademique
end
