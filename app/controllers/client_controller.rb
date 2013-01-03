class ClientController < ApplicationController
	def index
		@ads=Ads.all
	end

	def profile
	
	end

	def full_ads
		@full_ads=Ads.find(params[:id])
	end

end
