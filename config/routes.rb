Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
<<<<<<< HEAD
  resources :products
  resources :users
  resources :comments
  resources :brands
  resources :category_pars
  resources :categorys
  resources :category_childs
=======
  resources :products, only: [:index,:new,:ctreate]
  # resources :users
  # resources :comments
  # resources :brands
  resources :category_parents
  # resources :categories
  # resources :category_children
>>>>>>> development_branch_0426_3
end
