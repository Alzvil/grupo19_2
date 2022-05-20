Rails.application.routes.draw do
  get '/turnos', to: 'turnos#index'
  get '/turnos/new', to: 'turnos#new'
  post '/turnos', to: 'turnos#create' 
  get '/turnos/:id', to: 'turnos#show', as: 'turno'
  get '/turnos/:id/edit', to: 'turnos#edit', as: 'edit_turno'
  patch '/turnos/:id', to: 'turnos#update'
  delete '/turnos/:id', to: 'turnos#delete'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
