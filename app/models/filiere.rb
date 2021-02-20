class Filiere < ApplicationRecord
  acts_as_paranoid
  validates :code, :libelle , presence: true, uniqueness: true
  belongs_to :systeme
  has_many :clas, dependent: :destroy
end
