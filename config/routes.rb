Rails.application.routes.draw do
  get 'locations/index'

  root 'users#show'
  devise_for :users
    resources :users do
      resources :vehicles
    end

    resources :locations do
      resources :slots
    end



end
