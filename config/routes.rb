Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'templates#index'
end
