Rails.application.routes.draw do

  get '/signup' => 'users#new'

  resources :reviews
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
