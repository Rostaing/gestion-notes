class Etudiant < ApplicationRecord
  acts_as_paranoid
  mount_uploader :photo, PhotoUploader
  validates :nom, :prenom,presence: true, length: { minimum: 2, maximum: 250 }
  # validates :age, presence: true, numericality: { only_integer: true, greater_than: 15, less_than_or_equal_to: 70 }
  validates :matricule, :sexe, :email, :telephone, :bp, :date_naissance, :lieu_naissance, :rue, :quartier, presence: true
  validates :matricule, :email, :telephone, uniqueness: true
  belongs_to :cla
  belongs_to :country
  belongs_to :anneeacademique
end
