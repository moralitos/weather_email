# This is the class that will store the weather being
# recorded every hour
class HourlyWeather < ActiveRecord::Base
  belongs_to :city

  # store the whole payload being retrieved
  serialize :data

  validates_presence_of :temperature, :humidity
end
