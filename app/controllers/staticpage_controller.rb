class StaticpageController < ApplicationController

	
def index
	@ads1=Ads.where(:Imageslide => true).all(:order => "random()")
	@search_need = Need.all
	@roles=Ads.all
	@users = User.all	
	@clients= Client.all
	@ads= Ads.all
	@careers= Career.all
	@clicks=Clicks.all
end

def statistics
	
end

def need
	@selected_city = params[:city_search]
	@selected_category = params[:category_search]	

	@needs= Need.where(:city => @selected_city, :category => @selected_category)
	
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
