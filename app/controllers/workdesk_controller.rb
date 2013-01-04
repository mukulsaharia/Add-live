class WorkdeskController < ApplicationController
	before_filter :authenticate_user!

	def index
		@count=1
		@user=current_user.fname
		@ads=Ads.find(:all, :order => "RANDOM()", :limit => 10)
		@refer_list=User.where("sponserID=?",current_user.username)
		@pins= Pin.where("frenchisename=?",current_user.username)
		@unpaid_points=Points.where( :user_id => current_user.id).sum :points
	end

end
