class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :phone_num
      t.integer :zip_code
      t.string :street_add

      t.timestamps
    end
  end
end
