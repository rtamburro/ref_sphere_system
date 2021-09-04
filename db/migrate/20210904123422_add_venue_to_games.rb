class AddVenueToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :venue, foreign_key: true
  end
end
