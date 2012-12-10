class AdsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@ads= Ads.all
		@do_not_open_without_link=1
		if @do_not_open_without_link==1
			@ads1=Ads.find(params[:id])
		end
	end

	def create
	end

	def show
		
	end

end
