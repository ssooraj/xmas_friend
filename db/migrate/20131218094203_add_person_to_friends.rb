class AddPersonToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :person, :string
  end
end
