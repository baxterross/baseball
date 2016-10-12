class Game < ActiveRecord::Base

	has_many :plays
	has_many :game_participations
	has_many :teams, through: :game_participations

	def as_json options={}
		json = {
			id: id,
			title: title,
			date: date,
			created_at: created_at,
			updated_at: updated_at
		}

		json[:teams] = teams if options[:include_teams]

		json
	end

end
