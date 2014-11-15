Rails.application.routes.draw do
  
  get 'courses/listcourses', to: 'courses#listcourses', as: "list_courses"
  get 'users/viewregisteredcourses', to: 'users#viewregisteredcourses', as: "list_registered_courses"
  
  devise_for :users
  
  get 'viewgroups/:id', to: 'users#viewgroups', as: "user_register"

  get 'users/:id1/:id2', to: 'users#coursereg', as: "user_reg"
  
  resources :courses

  delete 'courses/:id', to: 'courses#destroy', as: "course_destroy"

  root 'welcome#index'

  get 'hello', to: 'welcome#hello'
  get 'studentlist', to: 'welcome#list'
  get 'users/', to: 'users#index'
  get 'users/:id/edit', to: 'users#edit', as: "user_edit"
  
  get 'users/:id', to: 'users#show', as: "user_show"
  
  
  put 'users/:id/update', to: 'users#update', as: "user_update"
  delete 'users/:id', to: 'users#remove', as: "user_remove"

  get 'courses/:id/addgroup', to: 'courses#addgroup', as: "add_group"
  post 'courses/creategroup/:id', to: 'courses#creategroup', as: "create_group"
  get 'courses/:id1/:id2/editgroup', to: 'courses#editgroup', as: "group_edit"  
  put 'courses/:id1/:id2/updategroup', to: 'courses#updategroup', as: "group_update"
  delete 'courses/:id1/:id2', to: 'courses#groupremove', as: "group_remove"



  # get 'courses/:id', to: 'courses#creategroup', as: 'create_group'
  # put 'courses/:id/newgroup', to:'coureses#newgroup', as: 'new_group'
end
