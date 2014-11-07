Rails.application.routes.draw do
  
  resources :courses

  devise_for :users

  root 'welcome#index'

  get 'hello', to: 'welcome#hello'
  get 'studentlist', to: 'welcome#list'

end
