class InvestmentsController < ApplicationController
	load_and_authorize_resource

	def new
		if params[:id]
			@project = Project.find(params[:id])
			@funding_level = params[:investment_fundinglevel]
			@investment = Investment.new(project_id: @project.id, investment_fundinglevel: @funding_level)
		else
			flash[:notice] = "Investment could not be found"
		end

	end

	def create
		@project = Project.find(params[:investment][:project_id])
		@funding_level = params[:investment][:investment_fundinglevel]
		@investment = Investment.create!(user: current_user, project: @project, investment_fundinglevel: @funding_level)
		@project.update_current_funded
		@project.update_percent_current_funded
		@return = Return.create!(user: current_user, project: @project, investment_fundinglevel: @funding_level, state_returns: 'pending')
		flash[:notice] = "You have successfully invested $#{@return.investment_fundinglevel} in #{@project.project_name}."
	end

	def index
		@investments = current_user.investments.all
	end



end
