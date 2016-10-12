class PlaysController < ApplicationController

	def index
		render json: plays
	end

	def show
		render json: play.as_json(include_team: true, include_player: true)
	end

	def update
		play.update play_params
		render json: play.as_json(include_team: true, include_player: true)
	end

	def destroy	
		@play = play
		@play.destroy
		render json: @play.as_json(include_team: true, include_player: true)
	end

	def plays
		game = Game.find params[:game_id]
		not_found if game.nil?

		plays = game.plays
	end

	def play
		plays.includes(:team, :player).find(params[:id])
	end

	def play_params
		params.permit :player_id, :team_id, :game_id
	end

end
