class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :date_evaluation
  has_one :matiere
  has_one :typeevaluation
  has_one :anneeacademique
end
