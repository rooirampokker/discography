Rails.application.routes.draw do
  get 'styles/index'

  get 'genres/index'

  get 'artists/index'

  devise_for :users

  resources :artists
  resources :styles
  resources :genres

  root to: "artists#index"
  
  apipie
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :artists, only: [:create, :index, :destroy] do
        resource :styles, only: [:create, :index, :destroy]
        resource :genres, only: [:create, :index, :destroy]
      end
    end
  end
end
