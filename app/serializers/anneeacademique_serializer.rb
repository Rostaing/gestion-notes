class AnneeacademiqueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :date_debut, :date_fin, :statut

  has_many :evaluations
  has_many :clas
  has_many :matieres
  has_many :etudiants
  has_many :users, through: :ens_clas_matieres
  has_many :users
end
