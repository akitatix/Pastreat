Rails.application.routes.draw do
  devise_for :users

  get 'ratings/new'
  get 'ratings/create'
  root to: 'pages#home'
  resources :boulangeries, except: [:show]
  resources :reservations, only: [:new, :create, :index]
  resources :ratings, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
