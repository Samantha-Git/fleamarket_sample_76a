Rails.application.routes.draw do

  devise_for :users , :controllers => {:registrations => 'users/registrations'}
  root 'items#index'
  resources :items, only: [:show]
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :purchase, only: :index
  end
  
