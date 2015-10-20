class AddLatitudeToMeasures < ActiveRecord::Migration
  def change
    add_column :measures, :latitude, :decimal
  end
end
