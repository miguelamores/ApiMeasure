class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.integer :valor
      t.integer :latitude
      t.integer :logitude

      t.timestamps null: false
    end
  end
end
