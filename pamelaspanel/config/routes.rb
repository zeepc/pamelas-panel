Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/assign/students/:id", to: "assign#new"
  get "/assign/instructors/:id", to: "assign#new"
  get "/assign/students/:id/edit", to: "assign#edit"
  get "/assign/instructors/:id/edit", to: "assign#edit"
  post "/assign/students/:id", to: "assign#update"
  post "/assign/instructors/:id", to: "assign#update"

  resources :assign 
  resources :home
  resources :users
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts

 

end
