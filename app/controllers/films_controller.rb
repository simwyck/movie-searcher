class FilmsController < ApplicationController

  def index
  end

  def search
    @film = Tmdb::Movie.find(params[@film_title])
  end

  def show
    @film = Tmdb::Movie.detail(params[:id])
  	@images = Tmdb::Movie.images(params[:id])
  	@cast = Tmdb::Movie.casts(params[:id])
  	@trailers = Tmdb::Movie.trailers(params[:id])
  	@similar_movies = Tmdb::Movie.similar_movies(params[:id])
  end

end
