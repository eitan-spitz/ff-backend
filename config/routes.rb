Rails.application.routes.draw do
  resources :games, only: [:index, :show]
  resources :users, only: [:create, :index, :show, :destroy, :update] do
    resources :user_games, only: [:index, :show, :update]
  end
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
