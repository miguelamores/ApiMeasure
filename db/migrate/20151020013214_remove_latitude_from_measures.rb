class RemoveLatitudeFromMeasures < ActiveRecord::Migration
  def change
    remove_column :measures, :latitude, :integer
  end
end
