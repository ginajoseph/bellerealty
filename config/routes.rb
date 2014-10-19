Rails.application.routes.draw do
  root 'visitors#index'
  devise_for :users
  resources :users

  devise_scope :users do
    match '/sessions' => 'sessions#create', :via => :post
    match '/sessions' => 'sessions#destroy', :via => :delete
  end
end
