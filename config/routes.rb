Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'members#index'
  resources :members
  resources :balances, only: %i[index annual_balance]
end
