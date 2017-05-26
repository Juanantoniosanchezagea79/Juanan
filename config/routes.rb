Rails.application.routes.draw do

  get 'statics/index'

  get 'statics/about'

	resources :peliculas
	resources :comentarios

  get 'peliculas/index'
  get 'comentarios/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "peliculas#index"
end
