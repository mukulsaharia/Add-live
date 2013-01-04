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
		@chk_clicks=Clicks.where("user_id=?",current_user.id)
	end

	def new
		
	end


	def create
		
	end

	def check
		if $ads1.ans == params[:ans]
			Clicks.create(:user_id => current_user.id, :ads_id => $ads1.id, :ans => params[:ans])
			#@used_click_add=$ads1
			#@countused=$ads1.usedclicks
			$ads1.update_attributes(:usedclicks => $ads1.usedclicks+1)
			if current_user.packagetype == "Silver"
				@ads_success_point = 0.050
			elsif current_user.packagetype == "Gold"
				@ads_success_point = 0.075
			elsif current_user.packagetype == "Platinum"
				@ads_success_point = 0.100
			end
			Points.create(:user_id => current_user.id, :points => @ads_success_point, :Referal => false , :Ads_id => $ads1.id)

			redirect_to '/success'
		else
			redirect_to '/fail'
		end
	end

	
end
