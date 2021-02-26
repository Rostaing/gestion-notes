class Role < ApplicationRecord
    validates :libelle, presence: true, uniqueness: true
    has_many :role_users, dependent: :destroy
    has_many :users, through: :role_users
end
