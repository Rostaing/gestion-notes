class ClasMatiere < ApplicationRecord
  acts_as_paranoid
  belongs_to :cla
  belongs_to :matiere
end
