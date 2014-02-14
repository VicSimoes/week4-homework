require 'open-uri'

class WeatherController < ApplicationController

  def search
  end

  def conditions
    @city = params[:city]
    @url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city}&units=imperial")
    @json_data = open(@url).read
    @data = JSON.parse(@json_data) #turns data to ruby =>
  end

end

#Route, Contoller, Action, View
#ruby string, hash, array
