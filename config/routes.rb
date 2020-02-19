Rails.application.routes.draw do
  devise_for :users
  root to: 'costumes#index'
  get '/my_costumes', to: 'costumes#my_costumes'

  resources :costumes, except: [:index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create] do
    member do
      patch 'cancel'
    end
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
