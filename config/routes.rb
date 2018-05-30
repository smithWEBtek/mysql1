Rails.application.routes.draw do
  resources :pets
  resources :customers
 
	get '/randomize_pets', to: 'pets#randomize'

	root 'customers#index'
	
end
