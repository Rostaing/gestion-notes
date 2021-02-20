class EnsClasMatiereSerializer < ActiveModel::Serializer
  attributes :id
  has_one :anneeacademique
  has_one :enseignant
  has_one :cla
  has_one :matiere
end
