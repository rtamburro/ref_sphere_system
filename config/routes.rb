Rails.application.routes.draw do
  resources :venues
  resources :leagues
  resources :blocks
  devise_for :users, :controllers => {registrations: 'registrations', invitations: 'users/invitations'}
  resources :assignments
  resources :games
  resources :users, :only =>[:show]
  

  root "home#show"
end
