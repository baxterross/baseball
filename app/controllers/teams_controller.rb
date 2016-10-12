class TeamsController < ApplicationController

	def index
		render json: teams
	end

	def show
		render json: team
	end

	def update
		team.update team_params
		render json: team
	end

	def destroy
		@team = team
		@team.destroy
		render json: @team
	end

	def teams
		Team.all
	end

	def team
		Team.find params[:id]
	end

	def team_params
		params.permit :name
	end

end
