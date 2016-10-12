class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
