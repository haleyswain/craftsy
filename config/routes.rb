Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => {:registrations => 'registrations'}
  root :to => 'home#index'

  resources :users do
    resources :products
  end

  resources :products do
  end

  end
