Rails.application.routes.draw do
  resources :factory_elements
  resources :branches
  resources :companies
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
