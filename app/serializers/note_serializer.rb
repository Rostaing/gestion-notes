class NoteSerializer < ActiveModel::Serializer
  attributes :id, :valeur
  has_one :etudiant
  has_one :evaluation
  has_one :mention
end
