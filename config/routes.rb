Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'book/list'
  
  resources :articles

  root 'book#list'

  resources :articles do
  	resources :comments
  end	
end
