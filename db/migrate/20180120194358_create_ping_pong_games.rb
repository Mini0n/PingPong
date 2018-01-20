class CreatePingPongGames < ActiveRecord::Migration
  def change
    create_table :ping_pong_games do |t|
      t.string :datePlayer
      t.string :opponent
      t.integer :score
      t.integer :score2

      t.timestamps null: false
    end
  end
end
