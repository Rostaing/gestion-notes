class EtudiantSerializer < ActiveModel::Serializer
  attributes :id, :matricule, :nom, :prenom, :sexe, :email, :telephone, :bp, :date_naissance, :lieu_naissance, :rue, :quartier
  has_one :cla
  has_one :country
  has_one :anneeacademique

  has_many :notes
  has_many :evaluations, through: :notes
end
