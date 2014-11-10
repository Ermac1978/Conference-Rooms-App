class AddPicToConfRoom < ActiveRecord::Migration
  def change
    add_column :conf_rooms, :pic, :string
  end
end
