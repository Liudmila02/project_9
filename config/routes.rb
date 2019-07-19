Rails.application.routes.draw do
  root 'home#index'

  resources :users

  resources :tasks do
    put :complete, on: :member
  end  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create, :destroy]
  

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'

end
