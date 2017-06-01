Rails.application.routes.draw do

  devise_for :users

  root :to => "statics#index", as: 'home'

  
  resources :peliculas
  
  get '/about' => 'statics#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
