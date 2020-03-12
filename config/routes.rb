Rails.application.routes.draw do
  get 'locations/new'
  get 'locations/create'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'boulangeries#index'
      # rentrer une address
  get '/ranking', to: 'boulangeries#ranking', as: :rank
  resources :boulangeries do
    resources :reservations, only: [:new, :create]
    resources :ratings, only: [:new, :create]
    member do
      post :visit
    end
  end

  get '/toto', to: 'boulangeries#toto'

  get '/indexGeo', to: 'boulangeries#indexGeo'

  resources :reservations, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
