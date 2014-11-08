Rails.application.routes.draw do
  
  resources :courses

  devise_for :users

  root 'welcome#index'

  get 'hello', to: 'welcome#hello'
  get 'studentlist', to: 'welcome#list'
  get 'users/', to: 'users#index'
  get 'users/:id/edit', to: 'users#edit'
  get 'users/:id', to: 'users#show'
  get 'users/:id', to: 'users#show', as: "user_show"

end
