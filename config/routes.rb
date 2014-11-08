Rails.application.routes.draw do
  
  resources :courses

  devise_for :users

  root 'welcome#index'

  get 'hello', to: 'welcome#hello'
  get 'studentlist', to: 'welcome#list'
  get 'users/', to: 'users#index'
  get 'users/:id/edit', to: 'users#edit', as: "user_edit"
  get 'users/:id', to: 'users#show', as: "user_show"
  put 'users/:id/update', to: 'users#update', as: "user_update"
  delete 'users/:id', to: 'users#remove', as: "user_remove"

end
