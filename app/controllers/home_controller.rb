class HomeController < ApplicationController
  def index
    @games = PingPongGame.all
  end

  def history
    @games = PingPongGame.where(player: current_user.id)
    @users = User.all
  end

  def log
    @opponents = User.all
  end

end
