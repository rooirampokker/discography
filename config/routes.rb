Rails.application.routes.draw do
  resources :schools
  resources :school_reports
  
  apipie
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :schools, only: [:create, :index] do
        resource :school_reports, only: [:destroy]
      end
    end
  end
end
