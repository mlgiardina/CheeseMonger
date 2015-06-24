Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :cheeses
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

end
