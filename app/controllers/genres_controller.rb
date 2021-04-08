class Admin::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    genre = Genre.new(params_genre)
    genre.save
    redirect_back(fallback_location: root_path)
  end

  private

  def params_genre
    params.require(:genre).permit(:name)
  end
end
