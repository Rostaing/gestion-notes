class User < ApplicationRecord
  has_secure_password
  # acts_as_paranoid
    # validates_presence_of :email
    # validates_uniqueness_of :email

  mount_uploader :photo, PhotoUploader
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :matricule, :telephone, presence: true, uniqueness: true
  validates :password,
                length: { minimum: 6 },
                if: -> { new_record? || !password.nil? }

    validates :nom, :prenom, presence: true, length: { minimum: 2, maximum: 250 }
    # validates :age, presence: true, numericality: { only_integer: true, greater_than: 20, less_than_or_equal_to: 100 }
    validates :sexe, :telephone, :bp, :datenaissance, :lieunaissance, :quartier, presence: true

  belongs_to :country
  belongs_to :role

  has_many :permission_users
  has_many :permissions, through: :permission_users
end
