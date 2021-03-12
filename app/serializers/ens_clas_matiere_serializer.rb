class EnsClasMatiereSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :cla
  has_one :matiere
  has_one :anneeacademique
end
