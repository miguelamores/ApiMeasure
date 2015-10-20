class AddValueToMeasures < ActiveRecord::Migration
  def change
    add_column :measures, :value, :decimal
  end
end
