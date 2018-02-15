Rails.application.routes.draw do

  get 'searches/index'

  get 'films/index'

  get 'films/search'

  get 'movies/index'

  get 'movies/search'

  root 'films#index'

end
