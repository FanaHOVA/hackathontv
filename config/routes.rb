Rails.application.routes.draw do
  resources :sport_events, defaults: { format: 'json' }
  devise_for :users
end
