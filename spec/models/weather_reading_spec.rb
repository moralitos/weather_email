require 'rails_helper'

RSpec.describe WeatherReading, type: :model do
  it { should belong_to(:city) }
  it { should validate_presence_of(:temperature) }
  it { should validate_presence_of(:humidity) }
end
