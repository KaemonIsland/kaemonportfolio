Rails.application.routes.draw do
  root 'pages#home'

  get "/home", to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'

  resources :portfolios
  resources :blogs
end
