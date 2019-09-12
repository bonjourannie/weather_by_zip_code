require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './weather_report.rb'

module WeatherByZipCode
class Scraper
  
  def self.scrape_seattle_page
    url = "https://www.forecastadvisor.com/Washington/Seattle/98112/"
    doc = Nokogiri::HTML(open(url)) 

    high_temp = doc.css("div.hi.temp").first.text
    low_temp = doc.css("div.lo.temp").last.text 
    weather_conditions = doc.css("div.fc-bottom").first.text.strip
    
    WeatherReport.new(high_temp, low_temp, weather_conditions)
  end

  def self.scrape_oradell_page
    url = "https://www.forecastadvisor.com/NewJersey/Oradell/07649/"
    doc = Nokogiri::HTML(open(url)) 
    
    high_temp = doc.css("div.hi.temp").first.text
    low_temp = doc.css("div.lo.temp").last.text 
    weather_conditions = doc.css("div.fc-bottom").first.text.strip
    
    WeatherReport.new(high_temp, low_temp, weather_conditions)
  end

end
end
