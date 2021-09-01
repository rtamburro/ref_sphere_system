class AddSecondaryemailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email_2, :string
  end
end
