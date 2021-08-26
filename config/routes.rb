Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :assignments
  resources :games
  resources :blocks
  resources :users, :only =>[:show]
  

  root "home#show"
end
