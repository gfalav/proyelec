class AddUsertypeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :Usertype, :string
  end
end
