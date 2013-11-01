RubyProjects::Application.routes.draw do
  root 'projects#index'
  get 'add' => 'projects#new', as: 'add_project'
  get ':id' => 'projects#show', as: 'show_project', constraints: { id: /[0-9]*/ }
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  post 'sessions' => 'sessions#create', as: 'sessions'
  post 'projects' => 'projects#create', as: 'create_project'
end
