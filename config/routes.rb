Rails.application.routes.draw do
  root 'user#new'
  get '/new', to: 'users#new'
  post '/create', to: 'users#create'
end
