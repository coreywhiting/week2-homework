class GreetController < ApplicationController

	def index
		@greeting = params[:salutation] ? params[:salutation] : "Hello!"
	end

end