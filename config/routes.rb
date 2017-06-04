Rails.application.routes.draw do
  # devise_for :users
  resources :factory_elements
  resources :branches
  resources :companies
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
