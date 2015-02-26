Rails.application.routes.draw do
  root 'visitors#index'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users
end