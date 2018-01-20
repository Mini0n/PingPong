class CreatePingPongGames < ActiveRecord::Migration
  def change
    create_table :ping_pong_games do |t|

      t.timestamps null: false
    end
  end
end
