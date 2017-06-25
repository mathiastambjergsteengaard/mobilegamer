class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @new = true
  end

  def create
    game = Game.new(game_params)
    game.save
    redirect_to games_path
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(game_params)
    redirect_to games_path
  end

  def destroy
    Game.find(params[:id]).destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :url_name, :review, :youtube_url, :meta_title, :meta_description, :online, :android_download_links, :ios_download_links, :genre)
  end
end
