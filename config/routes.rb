Rails.application.routes.draw do

  #PROJECTS

  resources :projects

  #USERS

  # CREATE
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  #READ
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  # DELETE
  delete '/users/:id' => 'users#destroy'

end
