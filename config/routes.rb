Rails.application.routes.draw do
  root 'products#index'
  resources :products
  resources :users
  resources :comments
  resources :brands
  resources :category_parents
  resources :categories
  resources :category_children
end
