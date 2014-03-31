MKS::Application.routes.draw do

  resources :requests
  resources :sessions, only: [:create, :destroy]
  get "requests/new"
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  root  'static_pages#home'
  match '/signup',  to: 'requests#new',            via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

      end