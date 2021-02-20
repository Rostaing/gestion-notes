class Anneeacademique < ApplicationRecord
    acts_as_paranoid
    extend SimplestStatus

    statuses :draft, :preview, :published, :archived

    simple_status :locale, [:english, :spanish, :russian, :french]

    validates :libelle, :date_debut, :date_fin, presence: true, uniqueness: true
    has_many :evaluations, dependent: :destroy

    has_many :ens_clas_matieres, dependent: :destroy
    has_many :enseignants, through: :ens_clas_matieres
    has_many :clas, through: :ens_clas_matieres
    has_many :matieres, through: :ens_clas_matieres
    has_many :etudiants, dependent: :destroy
end
