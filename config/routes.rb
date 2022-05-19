Rails.application.routes.draw do
  
  root "pages#home"
  get 'public_recipes', to: 'public_recipes#index', as: 'public_recipes'
  resources :recipes, only: %i[index new show create destroy] 

  get 'shopping', to: 'shopping#index', as: 'shop'
  get 'recipes/:id', to: 'public_recipes#show', as: 'public_recipe_show'
  get 'inventory_food/index'
  get 'inventory/index'


  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }

  get 'foods', to: 'food#index', as: 'foods'

  resources :food, only: %i[index new show create destroy] 
  
  resources :pages, only: %i[home] do
  end

  # Defines the root path route ("/")
end
