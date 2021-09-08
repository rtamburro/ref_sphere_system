class AddNoteToVenue < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :note, :text
  end
end
