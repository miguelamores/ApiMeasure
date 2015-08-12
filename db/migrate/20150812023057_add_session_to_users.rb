class AddSessionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :session, :boolean
  end
end
