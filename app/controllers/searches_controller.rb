class SearchesController < ApplicationController
  def index
    @film = Tmdb::Movie.find(params[:query])
  end
end
