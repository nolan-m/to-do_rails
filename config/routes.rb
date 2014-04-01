ToDo::Application.routes.draw do
  match('/', {:via => :get, :to => "lists#index"})
  match('lists', {:via => :get, :to => "lists#index"})
  match('lists', {:via => :post ,:to => "lists#create"})
  # match('lists', {:via => :get ,:to => "lists#new"})
  match('lists/:id', {:via => :get, :to => "lists#show"})
  match('lists/:id/edit', {:via => :get, :to => "lists#edit"})
  match('lists/:id', {:via => [:patch, :put], :to => "lists#update"})
  match('lists/:id', {:via => :delete, :to => "lists#destroy"})

  # match('lists', {:via => :get, :to => "tasks#index"})
  match('lists/:list_id/tasks', {:via => :get, :to => "tasks#new"})
  match('lists/:list_id/tasks', {:via => :post ,:to => "tasks#create"})
  # match('lists/:id', {:via => :get, :to => "tasks#show"})
  match('tasks/:id/edit', {:via => :get, :to => "tasks#edit"})
  match('tasks/:id', {:via => [:patch, :put], :to => "tasks#update"})
  match('tasks/:id', {:via => :delete, :to => "tasks#destroy"})


end
