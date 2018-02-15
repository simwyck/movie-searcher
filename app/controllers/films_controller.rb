class FilmsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @film = Film.create(film_params)
    @film.save
    SendFilm.new(@film.film_text).perform
    redirect_to @film
  end

  def search
    @film = Tmdb::Movie.find(params[:query])
  end

  def show
    @film = Tmdb::Movie.detail(params[:id])
  	@images = Tmdb::Movie.images(params[:id])
  	@cast = Tmdb::Movie.casts(params[:id])
  	@trailers = Tmdb::Movie.trailers(params[:id])
  	@similar_movies = Tmdb::Movie.similar_movies(params[:id])
  end

  private

  def film_params
    params.require(:film).permit(:film_title)
  end

end
