class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :team_id
      t.integer :game_id
      t.integer :player_id
      t.string :identifier

      t.timestamps
    end
  end
end
