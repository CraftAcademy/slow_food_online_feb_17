Rails.application.routes.draw do

  devise_for :users
  root controller: :index, action: :index
  post '/', controller: :index, action: :select_category, as: :select_category

  resources :shopping_cart_items, only: [:create], as: :items

  resources :shopping_carts, only: [:show], as: :cart
  post "/complete", controller: :shopping_carts, action: :complete

  resources :dish, only: [:show]

  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show] do
      resources :dish, only: [:new, :create]
    end
  end

  namespace :api do
    namespace :v0 do
      resources :ping, only: [:index], constraints: { format: 'json' }
    end
  end
end
