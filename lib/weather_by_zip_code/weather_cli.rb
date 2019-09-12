module WeatherByZipCode
class CLI

    def call 
        greeting
        bye
    end

    def greeting
        puts "Hello! Do you want to know the weather of Seattle or Oradell? Or type exit"
        input = gets.strip.downcase
        case input 
        when "seattle"
            seattle_weather
        when "oradell"
            oradell_weather
        when "exit"
            bye
        else 
            "please enter Seattle, Oradell, or exit"
        
        end

    end

    def seattle_weather
        @weather = WeatherReport.all
        puts "Today will be a high of #{@weather.high_temp} F" 
        puts "low of #{@weather.low_temp} F"
        puts "and #{@weather.weather_conditions}"
    end

    def oradell_weather
        @weather = WeatherReport.all
        puts "Today will be a high of #{@weather.high_temp} F" 
        puts "low of #{@weather.low_temp} F"
        puts "and #{@weather.weather_conditions}"
    end
    
    def bye 
        puts "Thank you, come again!"
    end
    

end 
end                                                                                                           