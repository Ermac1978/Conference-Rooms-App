class AddUserToConfRoom < ActiveRecord::Migration
  def change
    add_column :conf_rooms, :user, :reference
  end
end
