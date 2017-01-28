Rails.application.routes.draw do
  root "portals#open"

  get '/open', to: 'portals#open', as: 'open_portal'
  get '/closed', to: 'portals#closed', as: 'closed_portal'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :manufacturers, only: [:index, :show], shallow: true do
    resources :models, only: [:index], shallow: true do
      resources :robots, only: :create
    end
  end

  resources :users, except: :index

  resources :robots, except: [:create, :new]

  resources :purchases, only: [:index, :show]

end
