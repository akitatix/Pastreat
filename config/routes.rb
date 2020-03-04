Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
      # rentrer une address
  resources :boulangeries do
    resources :reservations, only: [:new, :create]
    resources :ratings, only: [:new, :create]
  end
  resources :reservations, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
