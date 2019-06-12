# Routes
Rails.application.routes.draw do
  resources :categories

  get 'orders/create'
  get 'admins/administration'

  resources :admins do
  end

  resources :products do
    resources :orders, only: :create
  end

  resources :orders, only: [:index,:destroy]

  resources :orders do
    member do
        patch :clearcart
        put :clearcart
      end
  end

  resources :categories, except: [:show]

  resources :product_categories do
  end

  root to: 'products#index'
  devise_for :users

  concern :paginatable do
    get '(products/:page)', action: :index, on: :collection
  end
  resources :products, concerns: :paginatable
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
