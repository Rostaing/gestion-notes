class BulletinSerializer < ActiveModel::Serializer
  attributes :id, :date_edition, :date_retrait, :moyenne_etudiant, :moyenne_max_classe, :moyenne_min_classe, :effectif_classe, :rang_etudiant, :decision_conseil_prof
  has_one :etudiant
end
