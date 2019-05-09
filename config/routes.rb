Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :profiles, only: [:new,:show,:edit] do
    member do
      get 'pay'
    end
    collection do
      get 'log_out_page'
    end
  end
  resources :products, only:[:index,:new,:create,:show,:edit,:update] do
    member do
      get 'confirm_buy'
      get 'edit_index'
    end
  end
  # resources :users
  # resources :comments
  # resources :brands
  resources :category_parents
  # resources :categories
  # resources :category_children
  resources :users,  only:[:new] do
    member do
      get 'card_register_page'
      post 'card_register'
      resources :products do
        post 'buy'
      end
    end
  end
end

