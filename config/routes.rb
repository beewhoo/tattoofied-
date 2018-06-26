Rails.application.routes.draw do

  root 'artists#index'
  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)
  resources :artists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
