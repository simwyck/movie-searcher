require 'themoviedb'

class SearchFilm

  def initialize(film_title)
    #permet de faire passer le string en paramètre
    @film_title = film_title
  end

  def perform
    #exécute la/les tâche(s)
    log_in_to_tmdb
    search_film
  end

  def log_in_to_tmdb
    #permet de se login sur twitter avec tes credentials
    Tmdb::Api.key(ENV['THEMOVIEDB_API_KEY'])
  end

  def search_film
    #envoie un tweet
    Tmdb::Movie.find(@film_title)
  end

end
