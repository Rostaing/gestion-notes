class Note < ApplicationRecord
  acts_as_paranoid
  validates :valeur, :notemention, presence: true
  validates :valeur, numericality: true, inclusion: { in: 0..20 }
  belongs_to :etudiant
  belongs_to :evaluation
end
