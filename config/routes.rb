Rails.application.routes.draw do

  
  get 'sessions/new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :agents
  resources :auditions
  resources :roles
  resources :actors_projects
  resources :projects
  resources :actors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
