# This class will retrieve the weather
# from the weather API
#
class WeatherService
  # This method will use the API and retrieve the JSON
  # payload that corresponds to the city
  # it returns the following:
  #
  # { 'coord':{'lon':-0.13,'lat':51.51},
  #   'sys':{'type':1,'id':5168,'message':0.1894,'country':'GB','sunrise':1416035960,'sunset':1416067860},
  #   'weather':[{'id':701,'main':'Mist','description':'mist','icon':'50n'},
  #              {'id':741,'main':'Fog','description':'fog','icon':'50n'},
  #              {'id':301,'main':'Drizzle','description':'drizzle','icon':'09n'}],
  #   'base':'cmc stations',
  #   'main':{'temp':282.97,'pressure':998,'humidity':93,'temp_min':282.15,'temp_max':283.15},
  #   'wind':{'speed':1,'deg':100},
  #   'clouds':{'all':40},'dt':1416071716,'id':2643743,'name':'London','cod':200}
  #  }
  def get_weather_for(city)
    HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}")
  end

  def weather_for(city)
    JSON.parse(get_weather_for(city))
  end
end
