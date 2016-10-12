class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.belongs_to :game, index: true
      t.belongs_to :player, index: true
      t.belongs_to :team, index: true
      t.string :identifier

      t.timestamps
    end
  end
end
