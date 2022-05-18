Rails.application.routes.draw do
  get 'inventory_food/index'
  get 'inventory/index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

   get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :pages, only: %i[home] do
    resources :food, only: %i[index show destroy] 
  end

  # Defines the root path route ("/")
  root "pages#home"
end
