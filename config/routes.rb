Rails.application.routes.draw do

  namespace :admin do
    root 'application#index'

    resources :projects, only: [:new, :create, :destroy]
  end

  devise_for :users
  root 'projects#index'
  
  resources :projects, only: [:show, :index, :edit, :update] do
    resources :tickets, except: [:index]
  end
    
end
