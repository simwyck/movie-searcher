Rails.application.routes.draw do

  get '/search', to:'films#search'

  get 'films/index'

  get 'films/search'

  get 'movies/index'

  get 'movies/search'

  root 'films#index'

end
