Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action', as: :prefix
  get '/tasks', to: 'tasks#index'
  # create
  post '/tasks', to: 'tasks#create'
  # new
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # show
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
