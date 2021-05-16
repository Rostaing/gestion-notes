class Anneeacademique < ApplicationRecord
    acts_as_paranoid
    validates :libelle, :date_debut, :date_fin, presence: true, uniqueness: true
    has_many :evaluations, dependent: :destroy

    has_many :ens_clas_matieres, dependent: :destroy
    has_many :users, through: :ens_clas_matieres
    has_many :clas, through: :ens_clas_matieres
    has_many :matieres, through: :ens_clas_matieres
    has_many :etudiants, dependent: :destroy
    has_many :users
end
