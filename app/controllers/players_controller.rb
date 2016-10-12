class PlayersController < ApplicationController

	def index
		render json: players
	end

	def show
		render json: player
	end

	def update
		player.update player_params
		render json: player
	end

	def destroy	
		@player = player
		@player.destroy
		render json: @player
	end

	def players
		team = Team.find params[:team_id]
		not_found if team.nil?

		players = team.players
	end

	def player
		players.find params[:id]
	end

	def player_params
		params.permit :name
	end

end
