class InitController < ApplicationController
  def init
    redirect_to game_path(Game.first)
  end
end
