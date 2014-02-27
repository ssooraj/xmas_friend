class AddSnameToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :sname, :string
  end
end
