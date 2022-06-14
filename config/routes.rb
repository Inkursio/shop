Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'main#index'

  resources :products, only: [:show]

  resources :categories, only: [:show]

  resources :search, only: [:index]

end
