Rails.application.routes.draw do


#routes for actors login sessions
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

#routes for agents login sessions
  get 'agent_sessions/new'
  get '/agents/login', to: 'agent_sessions#new'
  post '/agents/login', to: 'agent_sessions#create'
  delete '/agents/logout', to: 'agent_sessions#destroy'

  resources :agents
  resources :auditions
  resources :roles
  resources :actors_projects
  resources :projects
  resources :actors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
