Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'members#index'
  resources :members
  get 'balances/new', to: 'balances#new'
  post 'balances/result', to: 'balances#result'
end
