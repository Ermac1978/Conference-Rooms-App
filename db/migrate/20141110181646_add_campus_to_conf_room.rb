class AddCampusToConfRoom < ActiveRecord::Migration
  def change
    add_reference :conf_rooms, :campus, index: true
  end
end
