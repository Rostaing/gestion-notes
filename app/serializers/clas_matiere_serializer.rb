class ClasMatiereSerializer < ActiveModel::Serializer
  attributes :id
  has_one :cla
  has_one :matiere
end
