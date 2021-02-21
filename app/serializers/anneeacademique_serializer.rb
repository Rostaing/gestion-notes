class AnneeacademiqueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :date_debut, :date_fin, :statut
end
