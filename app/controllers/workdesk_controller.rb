class WorkdeskController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@count=1
		@user=current_user.fname
		@ref_points = 0
		$ads=Ads.find(:all, :order => "RAND()", :limit => 10)
		$refers=User.where(:sponserID => current_user.username)
		@pins= Pin.where("frenchisename=?",current_user.username)
		@total_ads_points=Points.where( :user_id => current_user.id, :Referal => false).sum :points
		@req_points =PaidReqPoints.where(:user_id => current_user.id, paid: [false,nil]).sum :points
		@paid_points =PaidReqPoints.where(:user_id => current_user.id, paid: [true]).sum :points
		@total_tds =PaidReqPoints.where(:user_id => current_user.id).sum :tds
		@total_admincharge =PaidReqPoints.where(:user_id => current_user.id).sum :admincharge
			

	end

	def create_request
		if current_user.panno ==""
			@tds = $balance_points*20/100
		else 
			@tds =$balance_points/10
		end
		@admin_charge = $balance_points/10
		@payable_balance_point = $balance_points - @admin_charge - @tds
		PaidReqPoints.create(:user_id => current_user.id, :paid => false , :points => @payable_balance_point, :tds => @tds, :admincharge => @admin_charge)
		redirect_to root_path
	end

	def paid_history
		@paid_history=PaidReqPoints.where("user_id=?",current_user.id)
	end


end
