class PermissionUserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :permission
  has_one :user
end
