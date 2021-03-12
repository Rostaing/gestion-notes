class Bulletin < ApplicationRecord
  validates_presence_of :date_edition, :date_retrait, :moyenne_etudiant, :moyenne_max_clas, :moyenne_min_clas, :effectif_clas, :rang_etudiant, :decision_conseil_prof, :mentionbulletin
  acts_as_paranoid
  belongs_to :etudiant
  has_many :lignebulletins, dependent: :destroy
end
