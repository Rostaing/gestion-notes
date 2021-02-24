class Cla < ApplicationRecord
  acts_as_paranoid
  validates :code, :libelle, presence: true, uniqueness: true
  belongs_to :filiere
  has_many :evaluations, dependent: :destroy
  
  #has_many :matieres, dependent: :destroy
  #has_many :clas_matieres, dependent: :destroy
  #has_many :matieres, through: :clas_matieres

  has_many :ens_clas_matieres, dependent: :destroy
  has_many :anneeacademiques, through: :ens_clas_matieres
  has_many :clas, through: :ens_clas_matieres
  has_many :enseignants, through: :ens_clas_matieres
  has_many :etudiants, dependent: :destroy
end
