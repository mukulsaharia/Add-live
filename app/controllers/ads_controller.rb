class AdsController < ApplicationController

	def index
		@ads= Ads.all
		@ads1=Ads.find(params[:id])
	end

	def create
	end

	def show
		
	end

end
