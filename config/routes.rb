Rails.application.routes.draw do
  get 'users/new'
  get 'session/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login'   => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

    resources :users







end
