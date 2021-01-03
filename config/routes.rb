Rails.application.routes.draw do
  resources :games
  resources :users, only: [:create, :index, :show] do
    resources :user_games
  end
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
