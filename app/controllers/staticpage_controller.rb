class StaticpageController < ApplicationController

def index
end

def statistics
@users = User.all	
@clients= Client.all
@ads= Ads.all
end

def mukul
end
	


end
