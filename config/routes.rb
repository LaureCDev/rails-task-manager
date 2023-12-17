Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

# creation
# voir toutes les tâches
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'


  # show one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Defines the root path route ("/")
  # root "posts#index"

  # modif task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'

end
