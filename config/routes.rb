Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products, only: [:index,:new,:ctreate,:show]
  resources :profiles, only: [:new,:show]
  # resources :users
  # resources :comments
  # resources :brands
  resources :category_parents
  # resources :categories
  # resources :category_children
end
