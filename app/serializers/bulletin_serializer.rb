class BulletinSerializer < ActiveModel::Serializer
  attributes :id, :date_edition, :date_retrait, :moyenne_etudiant, :moyenne_max_clas, :moyenne_min_clas, :effectif_clas, :rang_etudiant, :decision_conseil_prof
  has_one :etudiant
  has_one :mention
end
