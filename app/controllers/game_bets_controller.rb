class GameBetsController < ApplicationController
  def index
    @game_bets = GameBet.all
  end
end
