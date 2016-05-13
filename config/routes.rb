Rails.application.routes.draw do
  root to: 'users#index'

  resources :bars
  resources :game_bets
  resources :sport_events
  resources :nations
  resources :users, only: [:show]

  devise_for :users, path: '', path_names: { sign_in: 'login',
                                             sign_out: 'logout',
                                             sign_up: 'signup'
                                           }
end
