class CreateGameParticipations < ActiveRecord::Migration
	def change
		create_table :game_participations do |t|
			t.belongs_to :team, index: true
			t.belongs_to :game, index: true

			t.boolean :victorious

			t.timestamps
		end
	end
end
