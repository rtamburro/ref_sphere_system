class AddLeagueToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :league, foreign_key: true
  end
end
