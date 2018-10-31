Rails.application.routes.draw do
  get '/users', to: 'users#index'
  root 'users#new'
  get '/new', to: 'users#new'
  post '/create', to: 'users#create'
end
