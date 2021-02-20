class Matiere < ApplicationRecord
    acts_as_paranoid
    validates :code, :libelle, :coefficient, presence: true
    validates :code, :libelle, uniqueness: true
    has_many :clas_matieres, dependent: :destroy
    has_many :clas, through: :clas_matieres
    has_one :evaluation, dependent: :destroy

    has_many :ens_clas_matieres, dependent: :destroy
    has_many :anneeacademiques, through: :ens_clas_matieres
    has_many :clas, through: :ens_clas_matieres
    has_many :enseignants, through: :ens_clas_matieres
end
