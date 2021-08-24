class Game < ApplicationRecord
    has_one :assignment
    has_many :users, through: :assignment
end
