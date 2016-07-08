Rails.application.routes.draw do


  resources :rides

  resources :attractions

  resources :users, :sessions

  root 'static_pages#home'

  get 'signin', to: 'sessions#new'

  get '/signout', to: 'sessions#destroy'
  post "/rides/new", to: "rides#new"

end
