class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.references :game, null: false, foreign_key: true
      t.references :center_referee, null: true, foreign_key: { to_table: :users }
      t.references :assistant_referee_1, null: true, foreign_key: { to_table: :users }
      t.references :assistant_referee_2, null: true, foreign_key: { to_table: :users }
      t.references :fourth_official, null: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
