class RemoveIndexFromFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :index, :string
  end
end
