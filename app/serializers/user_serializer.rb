class UserSerializer < ActiveModel::Serializer
  attributes :id, :nom, :prenom, :sexe, :email, :password, :matricule, :telephone, :bp, :datenaissance, :lieunaissance, :quartier, :photo
  has_one :country
  has_one :role
  has_one :anneeacademique
end
