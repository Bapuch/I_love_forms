Rails.application.routes.draw do
  root 'users#new'
  get '/new', to: 'users#new'
  post '/create', to: 'users#create'
end
