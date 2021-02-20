class LignebulletinSerializer < ActiveModel::Serializer
  attributes :id, :matiere, :coefficient, :moyenne_clas, :moyenne_etudiant
  has_one :bulletin
end
