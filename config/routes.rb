Rails.application.routes.draw do
  resources :restaurants, only: [:show, :new, :create]
end
