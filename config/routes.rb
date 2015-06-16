Rails.application.routes.draw do
  get '/' => 'site#home', as: 'root'
  get 'users/:user_id/projects' => 'projects#user_projects', as: 'user_projects'
  
  get '/signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :projects

  resources :users do
  	resources :projects
  end

  resources :events
  
 
end
