class Typeevaluation < ApplicationRecord
    acts_as_paranoid
    validates :libelle, presence: true, uniqueness: true
    has_many :evaluations, dependent: :destroy
end
