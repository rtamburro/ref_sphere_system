Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', invitations: 'users/invitations'}
  
  resources :assignments
  resources :games
  resources :venues
  resources :leagues
  resources :blocks
  resources :users, :only =>[:show]
  

  root "home#show"
end
