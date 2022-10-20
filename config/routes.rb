# frozen_string_literal: true

Rails.application.routes.draw do
  root 'chatroom#index'
  post 'text', to: 'texts#create'
  mount ActionCable.server, at: '/cable'

  # sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # users log in 
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end
