Rails.application.routes.draw do
  resources :events
  root :to => 'events#index'
  devise_for :users
  resources :users, :only => :show
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
