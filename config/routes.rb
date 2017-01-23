Rails.application.routes.draw do
  root 'static_pages#home'

 	get '/contact', to: 'contact#new', as: 'contact'
  post '/contact', to: 'contact#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
