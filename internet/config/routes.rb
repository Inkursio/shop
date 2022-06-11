Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'main#index'

  resources :product, only: [:show]

  resources :category, only: [:show]

  resources :search, only: [:index]

end
