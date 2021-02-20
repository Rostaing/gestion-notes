class RoleUserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :role
  has_one :user
end
