class RemoveLogitudeFromMeasures < ActiveRecord::Migration
  def change
    remove_column :measures, :logitude, :integer
  end
end
