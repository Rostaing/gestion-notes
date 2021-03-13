class UserSerializer < ActiveModel::Serializer
  attributes :id, :nom, :prenom, :sexe, :email, :password, :matricule, :telephone, :bp, :datenaissance, :lieunaissance, :quartier
  has_one :country
  has_one :role
  # has_many :permission_users
  has_many :permissions, through: :permission_users
end
