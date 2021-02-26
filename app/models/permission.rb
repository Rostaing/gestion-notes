class Permission < ApplicationRecord
    validates :libelle, presence: true, uniqueness: true
    has_many :permission_users, dependent: :destroy
    has_many :users, through: :permission_users
end
