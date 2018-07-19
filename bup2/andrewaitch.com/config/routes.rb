Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'author' => 'author#index'
  get 'contact' => 'contact#index'

  get 'portraits' => 'portraits#index'
  get 'monographs' => 'monographs#index'
  get 'abstracts' => 'abst#index'
  get 'upcoming' => 'upcoming#index'

  get 'portraits/:pname' => 'portraits#show'
  get 'monographs/:pname' => 'monographs#show'
  get 'abstract/:pname' => 'abst#show'
  get 'upcoming/:pname' => 'upcoming#show'

  get 'home' => 'home#index'

  get '/6833457' => 'admin#index' 
  get '/6833457/gestion/:catID'=> 'admin#gestion'

  get '/6833457/gestion/1/new'=> 'portraits#new'
  get '/6833457/gestion/2/new'=> 'monographs#new'
  get '/6833457/gestion/3/new'=> 'abst#new'
  get '/6833457/gestion/4/new'=> 'upcoming#new'

  post '/6833457/gestion/1' => 'portraits#create'
  post '/6833457/gestion/2' => 'monographs#create'
  post '/6833457/gestion/3' => 'abst#create'
  post '/6833457/gestion/4' => 'upcoming#create'

  get '/6833457/gestion/1/:id/edit' => 'portraits#edit'
  get '/6833457/gestion/2/:id/edit' => 'monographss#edit'
  get '/6833457/gestion/3/:id/edit' => 'abst#edit'
  get '/6833457/gestion/4/:id/edit' => 'upcoming#edit'

  put '/6833457/gestion/1/:id/' => 'portraits#update'
  put '/6833457/gestion/2/:id/' => 'monographss#update'
  put '/6833457/gestion/3/:id/' => 'abst#update'
  put '/6833457/gestion/4/:id/' => 'upcoming#update'

  delete '/6833457/gestion/1/:id' => 'portraits#destroy'
  delete '/6833457/gestion/2/:id' => 'monographs#destroy'
  delete '/6833457/gestion/3/:id' => 'abst#destroy'
  delete '/6833457/gestion/4/:id' => 'upcoming#destroy'

  get '/6833457/gestion/:catID/:ppid/' => 'admin#pgestion'

  get '/6833457/gestion/:catID/:ppid/new'=> 'images#new'

  post '/6833457/gestion/:catID/:ppid' => 'images#create'

  get '/6833457/gestion/:catID/:ppid/:id/edit' => 'images#edit'

  put '/6833457/gestion/:catID/:ppid/:id/' => 'images#update'

  delete '/6833457/gestion/:catID/:ppid/:id' => 'images#destroy'

end
