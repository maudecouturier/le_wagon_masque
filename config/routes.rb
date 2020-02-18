Rails.application.routes.draw do
  devise_for :users
  root to: 'costumes#index'
  get '/my_costumes', to: 'costumes#my_costumes'
  # get '/my_bookings', to: 'bookings#my_bookings'

  resources :costumes, except: [:index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
