Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  root :to => 'home#index'
  resources :products
  resources :users, :only => [:show] do
  end
end
