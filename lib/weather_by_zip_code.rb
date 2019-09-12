require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './weather_by_zip_code/weather_cli.rb'
require_relative './weather_by_zip_code/scraper.rb'
require_relative './weather_by_zip_code/weather_report.rb'
require_relative "./weather_by_zip_code/version"

# module WeatherByZipCode
#   class Error < StandardError; end
#   # Your code goes here...
# end

#like an environment, require gems first, load all files. 
#use require for gems, require_relative for file