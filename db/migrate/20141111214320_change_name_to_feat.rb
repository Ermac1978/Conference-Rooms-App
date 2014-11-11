class ChangeNameToFeat < ActiveRecord::Migration
  def change
    rename_column :features, :name, :feat
  end
end
