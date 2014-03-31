MKS::Application.routes.draw do

  resources :requests

  get "requests/new"

  root  'static_pages#home'
  match '/signup',  to: 'requests#new',            via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

      end