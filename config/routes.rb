Rails.application.routes.draw do
  devise_for :users
  root to: 'costumes#index'
  resources :costumes, except: [:index]
  resources :bookings do
    resources :reviews, only: [:new, :create, :index, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
