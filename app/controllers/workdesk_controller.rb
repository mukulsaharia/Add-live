class WorkdeskController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@count=1
		@user=current_user.fname
		@ref_points = 0
		$ads=Ads.find(:all, :order => "RANDOM()", :limit => 10)
		$refers=User.all
		@pins= Pin.where("frenchisename=?",current_user.username)
		@total_ads_points=Points.where( :user_id => current_user.id, :Referal => false).sum :points
		@req_points =PaidReqPoints.where(:user_id => current_user.id, paid: [false,nil]).sum :points
		@paid_points =PaidReqPoints.where(:user_id => current_user.id, paid: [true]).sum :points
	end

	def create_request
		PaidReqPoints.create(:user_id => current_user.id, :paid => false , :points => $balance_points)
		redirect_to root_path
	end

	def paid_history
		@paid_history=PaidReqPoints.where("user_id=?",current_user.id)
	end


end
