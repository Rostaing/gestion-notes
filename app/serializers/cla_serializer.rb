class ClaSerializer < ActiveModel::Serializer
  attributes :id, :code, :libelle
  has_one :filiere
end
