class GamesController < ApplicationController

	def index
		render json: games.as_json(include_teams: true)
	end

	def show
		render json: game.as_json(include_teams: true, include_score: true)
	end

	def update
		game.update game_params
		render json: game
	end

	def destroy
		@game = game
		@game.destroy
		render json: @game
	end

	def games
		Game.includes(:teams, :plays).all
	end

	def game
		Game.find params[:id]
	end

	def game_params
		params.permit :title
	end

end
