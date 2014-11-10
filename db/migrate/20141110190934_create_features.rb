class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :index

      t.timestamps
    end
  end
end
