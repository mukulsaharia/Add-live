class WorkdeskController < ApplicationController
	before_filter :authenticate_user!

	def index
		@count=1
		@user=current_user.fname
		@ads=Ads.find(61)
		@refer_list=User.where("sponserID=?",current_user.username)
	end

end
