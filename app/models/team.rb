class Team < ActiveRecord::Base

	has_many :players, dependent: :destroy

	has_many :game_participations
	has_many :games, through: :game_participations

	has_many :plays

end
