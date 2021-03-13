class RoleSerializer < ActiveModel::Serializer
  attributes :id, :libelle

  has_many :users
  has_many :role_users
end
