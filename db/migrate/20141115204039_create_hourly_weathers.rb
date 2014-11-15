class CreateHourlyWeathers < ActiveRecord::Migration
  def change
    create_table :hourly_weathers do |t|
      t.string :temperature
      t.string :humidity
      t.text :data
      t.integer :city_id
      t.timestamps
    end
  end
end
