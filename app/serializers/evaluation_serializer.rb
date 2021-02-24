class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :date_evaluation, :typeevaluation
  has_one :cla
  has_one :matiere
  has_one :enseignant
  has_one :anneeacademique
end
