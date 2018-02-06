Rails.application.routes.draw do
  resources :moves
  resources :plays
  resources :games
  resources :users
end
