class ClickController < ApplicationController

	def new
		@click=Click.new
	end

	def create
		@click=Click.new(params[:click])
		
		if @click.save
			redirect_to "workdesk#index"
		end
	end
end
