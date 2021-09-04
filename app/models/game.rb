class Game < ApplicationRecord
    has_one :assignment, dependent: :destroy
    has_many :users, through: :assignment
    

    belongs_to :league
    belongs_to :venue

    accepts_nested_attributes_for :venue

    def create_assignment
        Assignment.create!(game_id: id)
    end

    def teams
        teams = "#{home_team} vs #{away_team}"
    end

    def time
        time =  "#{start_time&.strftime("%b %d, %Y %l:%M%P")} - #{end_time&.strftime("%l:%M%P")}"
    end
end
