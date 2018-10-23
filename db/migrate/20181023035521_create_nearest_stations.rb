class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :line,         null: false
      t.string :name,         null: false
      t.integer :minute_walk, null: false
      t.references :building, foreign_key: true, null: false

      t.timestamps
    end
  end
end
