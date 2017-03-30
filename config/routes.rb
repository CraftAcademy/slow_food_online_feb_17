Rails.application.routes.draw do
  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show] do
      resources :dish, only: [:show]
    end
  end
end
