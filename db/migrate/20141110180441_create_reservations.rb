class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :notes
      t.string :event_title

      t.timestamps
    end
  end
end
