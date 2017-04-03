Rails.application.routes.draw do

  root controller: :index, action: :index
  post '/', controller: :index, action: :select_category, as: :select_category
  resources :shopping_cart_items, only: [:create], as: :items
  resources :dish, only: [:show]
  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show]
  end
end
