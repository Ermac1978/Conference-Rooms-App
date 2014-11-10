class AddConfRoomToReservation < ActiveRecord::Migration
  def change
    add_reference :reservations, :conf_room, index: true
  end
end
