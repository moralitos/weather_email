class CreateWeatherReadings < ActiveRecord::Migration
  def change
    create_table :weather_readings do |t|
      t.string :temperature
      t.string :humidity
      t.text :data
      t.integer :city_id
      t.timestamps
    end
  end
end
