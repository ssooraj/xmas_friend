class AddFriendToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :friend, :string
  end
end
