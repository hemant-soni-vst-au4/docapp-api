Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :patients do
        resources :appointments
      end
      post "patient/login", to:"patients#login"
      get "patient/auto_login", to:"patients#auto_login"
      resources :doctors do
        resources :schedules
        resources :appointments
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
