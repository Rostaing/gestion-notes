class NoteSerializer < ActiveModel::Serializer
  attributes :id, :valeur, :notemention
  has_one :etudiant
  has_one :evaluation
end
