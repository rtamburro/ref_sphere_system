class AddHstoreToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :address, :hstore
  end
end
