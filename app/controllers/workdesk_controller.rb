class WorkdeskController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user=current_user.fname
		@ads=Ads.find(:all, :order => "RANDOM()")
	end

	def profile
	 	
	end
end
