Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/single'
  get 'pages/multiuser'

  resources :moves
  resources :plays
  resources :games
  resources :users
end
