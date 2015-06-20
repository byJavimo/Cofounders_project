Rails.application.routes.draw do
  get '/' => 'site#home', as: 'root'
  get 'users/:user_id/projects' => 'projects#user_projects', as: 'user_projects'
  get 'users/:user_id/skills/new' => 'skills#new_user_skill', as: 'new_user_skill'
  post 'users/:user_id/skills' => 'skills#create_user_skill'
  get 'projects/:project_id/skills/new' =>'skills#new_project_skill', as: 'new_project_skill'
  post 'project/:project_id/skills' => 'skills#create_project_skill'

  get '/signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', as: 'logout'

  resources :users
  resources :projects

  resources :users do
  	resources :projects
  end

  resources :users do
    resources :skills
  end

  resources :projects do
    resources :skills
  end

  resources :events
  



 
end
