Rails.application.routes.draw do

  root controller: :index, action: :index

  resources :shopping_carts, only: [:show], as: :cart do
    resources :shopping_cart_items, only: [:create], as: :items
  end

  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show]
  end
end
