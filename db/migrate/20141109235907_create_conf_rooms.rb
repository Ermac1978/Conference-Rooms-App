class CreateConfRooms < ActiveRecord::Migration
  def change
    create_table :conf_rooms do |t|
      t.string :name
      t.string :location
      t.integer :sq_feet
      t.string :description

      t.timestamps
    end
  end
end
