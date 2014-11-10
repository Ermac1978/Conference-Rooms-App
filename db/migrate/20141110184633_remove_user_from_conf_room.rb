class RemoveUserFromConfRoom < ActiveRecord::Migration
  def change
    remove_reference :conf_rooms, :user, index: true
  end
end
