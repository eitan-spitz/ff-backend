Rails.application.routes.draw do
  resources :games
  resources :user_games
  resources :users, only: [:create, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
