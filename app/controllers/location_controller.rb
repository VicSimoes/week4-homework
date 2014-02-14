require 'open-uri' #method open contained with uri library, need to write this so that the open command is understood

class LocationController < ApplicationController

def search
  #do something
end

def results
    @origin = params[:origin]
    @destination = params[:destination]
    @url = URI.escape("http://maps.googleapis.com/maps/api/directions/json?origin=#{@origin}&destination=#{@destination}&sensor=false")
    @json_data = open(@url).read #telling web app to go to URL
    @data = JSON.parse(@json_data)["routes"].first["legs"].first["steps"]

  #JSON.parse takes a string as a parameter and turns it into a hash.
  #each element in legs array is a hash and these are the keys in the has
end

end

#hash key and value

#chrome extension JSON view cleans up JSON view ab bit
