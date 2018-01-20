require 'test_helper'

class PingPongGamesControllerTest < ActionController::TestCase
  setup do
    @ping_pong_game = ping_pong_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ping_pong_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ping_pong_game" do
    assert_difference('PingPongGame.count') do
      post :create, ping_pong_game: { datePlayer: @ping_pong_game.datePlayer, opponent: @ping_pong_game.opponent, score2: @ping_pong_game.score2, score: @ping_pong_game.score }
    end

    assert_redirected_to ping_pong_game_path(assigns(:ping_pong_game))
  end

  test "should show ping_pong_game" do
    get :show, id: @ping_pong_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ping_pong_game
    assert_response :success
  end

  test "should update ping_pong_game" do
    patch :update, id: @ping_pong_game, ping_pong_game: { datePlayer: @ping_pong_game.datePlayer, opponent: @ping_pong_game.opponent, score2: @ping_pong_game.score2, score: @ping_pong_game.score }
    assert_redirected_to ping_pong_game_path(assigns(:ping_pong_game))
  end

  test "should destroy ping_pong_game" do
    assert_difference('PingPongGame.count', -1) do
      delete :destroy, id: @ping_pong_game
    end

    assert_redirected_to ping_pong_games_path
  end
end
