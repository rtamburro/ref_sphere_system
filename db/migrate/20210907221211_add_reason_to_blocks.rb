class AddReasonToBlocks < ActiveRecord::Migration[6.1]
  def change
    add_column :blocks, :reason, :text
  end
end
