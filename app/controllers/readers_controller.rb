class ReadersController < ActionController::Base
	def new
	end
	
  protect_from_forgery with: :exception
end
