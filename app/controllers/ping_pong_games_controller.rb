class PingPongGamesController < ApplicationController
  before_action :set_ping_pong_game, only: [:show, :edit, :update, :destroy]

  # GET /ping_pong_games
  def index
    @ping_pong_games = PingPongGame.where(player: current_user.id)
  end

  # GET /ping_pong_games/1
  def show
  end

  # GET /ping_pong_games/new
  def new
    # @ping_pong_game = PingPongGame.new
  end

  # GET /ping_pong_games/1/edit
  def edit
  end

  # POST /ping_pong_games
  def create
    @month = params[:month]
    @day   = params[:day]
    @year  = params[:year]

    @opponent = params[:opponent_id]

    @myScore = params[:myScore]
    @theirScore = params[:theirScore]

    @played = ""+@month+"/"+@day+"/"+@year

    @game = PingPongGame.new
    @game.datePlayer = @played
    @game.opponent   = @opponent
    @game.score      = @myScore
    @game.score2     = @theirScore

    @currentUser = current_user.id

    @game.player = current_user.id

    if @game.save
      redirect_to "/history"
    end
  
  end

  # PATCH/PUT /ping_pong_games/1
  def update
    if @ping_pong_game.update(ping_pong_game_params)
      redirect_to @ping_pong_game, notice: 'Ping pong game was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ping_pong_games/1
  def destroy
    @ping_pong_game.destroy
    redirect_to ping_pong_games_url, notice: 'Ping pong game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ping_pong_game
      @ping_pong_game = PingPongGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ping_pong_game_params
      params.require(:ping_pong_game).permit(:datePlayer, :opponent, :score, :score2)
    end
end
