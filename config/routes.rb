Rails.application.routes.draw do
  resources :bars
  resources :game_bets
  resources :sport_events
  resources :nations
  resources :users, only: [:show]
  
  devise_for :users
end
