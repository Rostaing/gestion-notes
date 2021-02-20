class Matiere < ApplicationRecord
    acts_as_paranoid
    validates :coefficient, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 25 }
    validates :code, :libelle, uniqueness: true, presence: true
    has_many :clas_matieres, dependent: :destroy
    has_many :clas, through: :clas_matieres
    has_one :evaluation, dependent: :destroy

    has_many :ens_clas_matieres, dependent: :destroy
    has_many :anneeacademiques, through: :ens_clas_matieres
    has_many :clas, through: :ens_clas_matieres
    has_many :enseignants, through: :ens_clas_matieres
end
