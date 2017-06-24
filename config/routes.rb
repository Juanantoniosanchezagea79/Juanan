Rails.application.routes.draw do

  get 'select_movies/index'

  #get 'payment_select/select_plan'
  get '/select_plan' => 'payment_select#select_plan', as: :select_plan
  #get 'payment_select/select_monthly_subscription'
  get '/select_monthly_subscription' => 'payment_select#select_monthly_subscription', as: :select_monthly_subscription
  
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'settings/index'
  resources :settings
  resources :peliculas
  resources :chargues
  resources :select_movies, only: :index
  
  get '/about' => 'statics#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "statics#index"
end
