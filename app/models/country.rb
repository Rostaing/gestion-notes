class Country < ApplicationRecord
    acts_as_paranoid
    validates :nom, :code, :membre, presence: true
    validates :code, uniqueness: true
    has_many :enseignants, dependent: :destroy
    has_many :etudiants, dependent: :destroy
end
