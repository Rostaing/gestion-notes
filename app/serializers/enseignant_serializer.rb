class EnseignantSerializer < ActiveModel::Serializer
  attributes :id, :matricule, :nom, :prenom, :sexe, :email, :telephone, :bp, :date_naissance, :lieu_naissance, :rue, :quartier
  has_one :country
end
