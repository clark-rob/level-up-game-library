# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[index show update]
  resources :games, except: %i[new edit]
  resources :consoles, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/game-search/:name' => 'games#search'
end
