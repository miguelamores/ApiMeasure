class RemoveValueFromMeasures < ActiveRecord::Migration
  def change
    remove_column :measures, :value, :decimal
  end
end
