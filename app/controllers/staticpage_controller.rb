class StaticpageController < ApplicationController

	
def index
	@ads1=Ads.all(:order => "random()", :limit =>5)
	@search_need = Need.all
	@roles=Ads.all
end

def statistics
@users = User.all	
@clients= Client.all
@ads= Ads.all
@careers= Career.all
@clicks=Clicks.all
end

def need
	@needs= Need.where(:city => params[:search])	
	
end


	
def career
	@career = Career.all(:order => '(created_at) DESC')
end

def career_page
	@career1=Career.find(params[:id])
end

def side_bar

end



end
