class AdsController < ApplicationController
	before_filter :authenticate_user!
		$do_not_open_without_link=1
	def index
		@ads= Ads.all
		if $do_not_open_without_link==1
			$ads1=Ads.find(params[:id])
		else
			redirect_to '/Workdesk'
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
