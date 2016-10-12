class Play < ActiveRecord::Base

	belongs_to :game
	belongs_to :player
	belongs_to :team

	def as_json options = {}
		json = {
			id: id,
			game_id: game_id,
			player_id: player_id,
			team_id: team_id,
			identifier: identifier,
			created_at: created_at,
			updated_at: updated_at
		}

		json[:player] = player if options[:include_player]
		json[:team] = team if options[:include_team]

		json
	end

end
