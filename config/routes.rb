Rails.application.routes.draw do
  get 'turnos/index'
  get 'turnos/new'
  get 'turnos/create'
  get 'turnos/edit'
  get 'turnos/update'
  get 'turnos/delete'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
