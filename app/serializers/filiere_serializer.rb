class FiliereSerializer < ActiveModel::Serializer
  attributes :id, :code, :libelle
  has_one :systeme
end
