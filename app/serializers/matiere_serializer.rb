class MatiereSerializer < ActiveModel::Serializer
  attributes :id, :code, :libelle, :coefficient

  has_many :ens_clas_matieres, dependent: :destroy
  has_many :anneeacademiques, through: :ens_clas_matieres
  has_many :clas, through: :ens_clas_matieres
end
