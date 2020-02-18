Rails.application.routes.draw do
  devise_for :users
  root to: 'costumes#index'
  resources :costumes, except: [:index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
