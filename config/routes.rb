Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/robots', to: 'robots#index'
  get '/robots/:id', to: 'robots#show'
end
