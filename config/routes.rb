Rails.application.routes.draw do
  get 'sessions/new'
  # Static pages
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # User pages
  get '/signup', to: 'users#new'
  resources :users

  # Session pages
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
