class Lignebulletin < ApplicationRecord
  acts_as_paranoid
  belongs_to :bulletin
end
