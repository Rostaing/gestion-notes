class FiliereSerializer < ActiveModel::Serializer
  attributes :id, :code, :libelle
  has_one :systeme
  has_many :clas
end
