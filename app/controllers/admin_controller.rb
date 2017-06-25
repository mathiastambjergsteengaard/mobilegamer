class AdminController < ApplicationController
  def new_game
    @game = Game.new
  end

end
