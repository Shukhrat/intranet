Rails.application.routes.draw do
  
  resources :courses

  devise_for :users

  root 'welcome#index'

  get 'hello', to: 'welcome#hello'
  get 'studentlist', to: 'welcome#list'
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'

end
