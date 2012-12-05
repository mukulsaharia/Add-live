class AdsController < ApplicationController

	def index
		@ads= Ads.all
	end

	def create
	end

end
