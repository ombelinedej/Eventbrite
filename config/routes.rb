Rails.application.routes.draw do
  resources :event
  resources :user
  resources :attendance, only: [:create, :destroy]
  root 'static_pages#index'
  devise_for :users
  get 'event/index'

  get 'static_pages/index'
  get 'static_pages/secret'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end