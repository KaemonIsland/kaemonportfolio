Rails.application.routes.draw do
  get "/home", to: 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  resources :portfolios
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
