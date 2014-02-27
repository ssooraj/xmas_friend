class AddLoggedToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :logged, :boolean, :default => false
  end
end
