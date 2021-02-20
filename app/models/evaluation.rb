class Evaluation < ApplicationRecord
  acts_as_paranoid
  validates :date_evaluation, presence: true
  belongs_to :matiere
  belongs_to :typeevaluation
  belongs_to :anneeacademique
  has_many :notes, dependent: :destroy
  has_many :etudiants, through: :notes
end
