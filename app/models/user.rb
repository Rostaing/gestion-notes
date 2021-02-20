class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :role_users, dependent: :destroy
  has_many :users, through: :role_users
  has_many :permisson_users, dependent: :destroy
  has_many :permissions, through: :permisson_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
