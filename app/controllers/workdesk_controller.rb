class WorkdeskController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user=current_user.fname
	end
	def profile
	 	
	end

end
