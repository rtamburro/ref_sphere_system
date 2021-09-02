class League < ApplicationRecord
    has_many :games, inverse_of: :league
end
