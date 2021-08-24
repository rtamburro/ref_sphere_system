class Assignment < ApplicationRecord
  belongs_to :game
  belongs_to :center_referee
  belongs_to :assistant_referee_1
  belongs_to :assistant_referee_2
  belongs_to :fourth_official
end
