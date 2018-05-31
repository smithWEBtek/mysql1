Rails.application.routes.draw do
	
	resources :pets
  resources :customers
 
	get '/add_pets', to: 'pets#add_pets'
	get '/randomize_pets', to: 'pets#randomize'
	get '/truncate_pets', to: 'pets#truncate_pets'
	
	get '/add_customers', to: 'customers#add_customers'
	get '/truncate_customers', to: 'customers#truncate_customers'
	
	root 'customers#index'
end
