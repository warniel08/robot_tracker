Rails.application.routes.draw do
  root "portals#open_portal"

  get '/open', to: 'portals#open_portal'
  get '/close', to: 'portals#closed_portal'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/robots', to: 'robots#index'
end
