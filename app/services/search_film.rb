require 'themoviedb'

class SearchFilm

  def initialize(film_title)
    #permet de faire passer le string en paramètre
    @film_title = @film_title
  end

  def perform
    #exécute la/les tâche(s)
    log_in_to_tmdb
    search_film
  end

  def log_in_to_tmdb
    #permet de se login sur TMDB avec tes credentials
    #ne fonctionne pas quand je mets ma clé ENV['TMDB_API_KEY']. si quelqu'un peut m'expliquer pourquoi.
    Tmdb::Api.key("955a862484d52b19d90e21b124f3446f")
  end

  def search_film
    #recherche le film
    Tmdb::Movie.find(@film_title)
  end

end
