class Mention < ApplicationRecord
    acts_as_paranoid
    validates :libelle, presence: true, length: { maximum: 50 }
    has_many :notes, dependent: :destroy

end
