Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/customers/:id', to: 'customers#create'
  get '/customers/:id', to: 'customers#show'

  post '/customer_items', to: 'customer_items#create'

  get '/items', to: 'items#index'
end
