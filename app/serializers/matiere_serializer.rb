class MatiereSerializer < ActiveModel::Serializer
  attributes :id, :code, :libelle, :coefficient
end
