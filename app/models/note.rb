class Note < ApplicationRecord
  acts_as_paranoid
  validates :valeur, presence: true, numericality: true, inclusion: { in: 0..20 }
  belongs_to :etudiant
  belongs_to :evaluation
  belongs_to :mention
end
