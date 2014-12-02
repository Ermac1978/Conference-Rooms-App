class AddUserIdToConfRoom < ActiveRecord::Migration
  def change
    add_reference :conf_rooms, :user, index: true
  end
end
