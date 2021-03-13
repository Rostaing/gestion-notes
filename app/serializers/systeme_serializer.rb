class SystemeSerializer < ActiveModel::Serializer
  attributes :id, :libelle
  has_many :filieres
end
