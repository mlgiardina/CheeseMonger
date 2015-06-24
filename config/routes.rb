Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :cheeses
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create', as: 'create_session'
  get 'logout' => 'sessions#destroy'
  root 'cheeses#index'

end
