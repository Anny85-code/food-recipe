Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }

  root "pages#home"
  get 'shopping', to: 'shopping#index', as: 'shop'
  get 'public_recipes', to: 'public_recipes#index', as: 'public_recipes'
  get 'foods', to: 'food#index', as: 'foods'

  resources :recipes
  resources :food, only: %i[index new show create destroy] 
  
  resources :pages, only: %i[home] 
  get 'error', to: 'pages#error', as: 'error'

end
