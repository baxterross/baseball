class TeamsController < ApplicationController

	def index
		render json: teams
	end

	def top_ranked
		render json: top_ranked_teams
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

	def top_ranked_teams
		Team.select('teams.*, count(teams.id) as win_count')
			.joins('join game_participations on game_participations.team_id = teams.id')
			.where('game_participations.victorious = ?', true)
			.group('teams.id')
			.order('win_count desc')
	end

	def team
		Team.find params[:id]
	end

	def team_params
		params.permit :name
	end

end
