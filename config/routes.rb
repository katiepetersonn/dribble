Rails.application.routes.draw do

  root to: 'pages#index'

  resources :users

  get 'session/new'

  #LOGIN
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  #PROJECTS
  resources :projects do
    resources :comments
  end


end
