class Evaluation < ApplicationRecord
  belongs_to :cla
  belongs_to :matiere
  belongs_to :anneeacademique
  belongs_to :user
end
