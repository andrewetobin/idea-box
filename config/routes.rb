Rails.application.routes.draw do
  root to: 'ideas#index'
  resources :ideas
  resources :categories
  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

get 'login'  => 'user_sessions#new'
get 'logout' => 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
