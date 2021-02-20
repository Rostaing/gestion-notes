class Bulletin < ApplicationRecord
  acts_as_paranoid
  belongs_to :etudiant
  belongs_to :mention
  has_many :lignebulletins, dependent: :destroy
end
