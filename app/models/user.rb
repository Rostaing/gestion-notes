class User < ApplicationRecord
    has_secure_password
    acts_as_paranoid
    validates_presence_of :email
    validates_uniqueness_of :email

    has_many :role_users, dependent: :destroy
    has_many :roles, through: :role_users
    has_many :permisson_users, dependent: :destroy
    has_many :permissions, through: :permisson_users
end
