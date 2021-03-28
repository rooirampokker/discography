Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  resources :artists
  resources :styles
  resources :genres
  root to: "home#index"
  
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
