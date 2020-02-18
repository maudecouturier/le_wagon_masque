Rails.application.routes.draw do
  devise_for :users
  root to: 'costumes#index'
  resources :costumes
  get '/my_costumes', to: 'costumes#my_costumes'
  resources :bookings do
    resources :reviews, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
