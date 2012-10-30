class ClientController < ApplicationController
	def index
		@ads=Ads.all
	end

	def profile
	
	end

end
