class Country < ApplicationRecord
    acts_as_paranoid
    validates :nom, :code, :membre, presence: true
    validates :code, uniqueness: true
    has_many :users, dependent: :destroy
    has_many :etudiants, dependent: :destroy

    # has_many :countries
end
