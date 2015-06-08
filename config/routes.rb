Rails.application.routes.draw do
  get '/' => 'site#home', as: 'root'
  get '/signup' => 'users#new', as: 'signup'

 
  
  #Ojo con esta ruta. REVISARLA!!!!!

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :projects
  
 
end
