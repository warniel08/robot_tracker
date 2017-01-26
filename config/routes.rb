Rails.application.routes.draw do
  root "portals#open"

  get '/open', to: 'portals#open', as: 'open_portal'
  get '/closed', to: 'portals#closed', as: 'closed_portal'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :manufacturers, only: [:index, :show] do
    resources :models, only: [:index]
  end

  resources :robots
end
