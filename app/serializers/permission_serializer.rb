class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :libelle
  has_many :users, through: :permission_users
end
