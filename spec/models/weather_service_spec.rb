require 'rails_helper'

describe WeatherService, :vcr do
  let(:weather_service) { WeatherService.new }

  it 'has a connection that responds to the api call' do
    city = 'Reston,VA'
    expect(weather_service.weather_for(city).keys).to include('weather')
  end
end
