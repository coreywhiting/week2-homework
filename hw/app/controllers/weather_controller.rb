require 'open-uri'
require 'json'

class WeatherController < ApplicationController

	def index

	end

	def city
		# Convert to an HTTP-compatible querystring parameter
		location = URI.escape(params[:city])

		# Send an HTTP request to the OpenWeatherMap API
		json_data = open("http://api.openweathermap.org/data/2.5/weather?q=#{location}&units=imperial").read

		# Parse the response string into a Ruby data structure
		# (You will need to figure out what kind of structure it is)
		data = JSON.parse(json_data)

		@temp = -9999

		if (data["cod"] != "404")
			@temp = data["main"]["temp"]
		end
		

		render 'current_conditions'	

	end

end