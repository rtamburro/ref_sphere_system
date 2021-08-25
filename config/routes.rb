Rails.application.routes.draw do
  get 'user/show'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :assignments
  resources :games
  resources :users, :only =>[:show]
  

  root "home#show"
end
