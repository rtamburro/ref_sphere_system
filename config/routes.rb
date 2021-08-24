Rails.application.routes.draw do
  resources :assignments
  resources :games
  devise_for :users
  root "home#show"
end
