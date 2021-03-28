Rails.application.routes.draw do
  devise_for :users

  resources :artists
  resources :styles
  resources :genres
  #root :to => redirect("/users/sign_in")
  
  apipie
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      devise_for :users
      resources :artists, only: [:create, :index, :destroy] do
        resource :styles, only: [:create, :index, :destroy]
        resource :genres, only: [:create, :index, :destroy]
      end
    end
  end
end
