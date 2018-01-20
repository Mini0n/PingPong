class AddPlayerToPingPongGame < ActiveRecord::Migration
  def change
    add_column :ping_pong_games, :player, :string
  end
end
