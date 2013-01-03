class StaticpageController < ApplicationController

def index
	
end

def statistics
@users = User.all	
@clients= Client.all
@ads= Ads.all
@careers= Career.all
@clicks=Clicks.all
end

def mukul
end
	
def career
	@career = Career.all(:order => '(created_at) DESC')
end

def career_page
	@career1=Career.find(params[:id])
end


end
