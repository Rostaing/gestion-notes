class ClaSerializer < ActiveModel::Serializer
  attributes :id, :code, :libelle
  has_one :filiere

  has_many :evaluations
  has_many :etudiants
end
