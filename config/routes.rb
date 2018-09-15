Rails.application.routes.draw do
  root 'pages#home'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :portfolios, except: [:show]
  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
