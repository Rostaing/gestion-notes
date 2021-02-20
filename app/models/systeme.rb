class Systeme < ApplicationRecord
    acts_as_paranoid
    validates :libelle, presence: true, uniqueness: true
    has_many :filieres, dependent: :destroy
end
