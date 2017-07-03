class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @genres = Genre.all.reverse
    genre = Genre.where(name: "All").first
    @genre_id = params[:genre] ? params[:genre][:name] : genre.id
    @genre = Genre.find(@genre_id.to_i)
    if params[:new_game]
      game_id = Game.all.map(&:id).sample
      url = request.original_url.split('?')
      length = url[0].length
      url[0][length-1] = game_id.to_s
      redirect_to url[0] + url[1]
    else
      @game = Game.find(params[:id])
    end
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
    params.require(:game).permit(:name, :url_name, :review, :youtube_url, :meta_title, :meta_description, :online, :android_download_link, :ios_download_link, :genre)
  end
end
