module WeatherByZipCode
class WeatherReport

    attr_accessor :high_temp, :low_temp, :weather_conditions

    @@weather = []

    def initialize(high_temp, low_temp, weather_conditions)
      @high_temp = high_temp
      @low_temp = low_temp
      @weather_conditions = weather_conditions
      @@weather << self
    end
  
    def self.all
      @@weather
    end

end
end
