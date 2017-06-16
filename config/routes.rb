Rails.application.routes.draw do

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'settings/index'
  resources :settings
  resources :peliculas
  
  
  get '/about' => 'statics#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "statics#index"
end
