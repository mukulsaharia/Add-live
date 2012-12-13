class AdsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@ads= Ads.all
		@do_not_open_without_link=1
		if @do_not_open_without_link==1
			$ads1=Ads.find(params[:id])
		end
	end

	def new
		
	end


	def create
		
	end

	def check
		if params[:ans] == $ads1.ans
			redirect_to '/success'
		else
			redirect_to '/fail'
		end
		
	end

	


end
