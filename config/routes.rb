Rails.application.routes.draw do
  resources :bars
  resources :sport_events, defaults: { format: 'json' }
  resources :nations, defaults: { format: 'json' }

  devise_for :users
end
