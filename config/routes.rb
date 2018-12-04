Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contents, only: [:index]
  resources :movies, only: [:index]
  resources :seasons, only: [:index]
  resources :subscriptions, only: [:index, :create]
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
