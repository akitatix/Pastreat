Rails.application.routes.draw do
  get 'locations/new'
  get 'locations/create'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'pages#home'
      # rentrer une address
  resources :boulangeries do
    resources :reservations, only: [:new, :create]
    resources :ratings, only: [:new, :create]
  end

  get '/toto', to: 'boulangeries#toto'

  resources :reservations, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
