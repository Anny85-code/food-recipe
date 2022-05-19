Rails.application.routes.draw do
  resources :recipes
  get 'public_recipes', to: 'public_recipes#index', as: 'public_recipes'
  get 'recipes/:id', to: 'public_recipes#show', as: 'public_recipe_show'
  get 'inventory_food/index'
  get 'inventory/index'
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :pages, only: %i[home] do
    resources :food, only: %i[index new create destroy] 
  end

  # Defines the root path route ("/")
  root "pages#home"
end
