class AddSelectedToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :selected, :boolean, :default => false
  end
end
