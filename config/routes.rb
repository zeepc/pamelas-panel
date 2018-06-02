Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/assigns/students/:id", to: "assigns#new"
  get "/assigns/instructors/:id", to: "assigns#new"
  get "/assigns/students/:id/edit", to: "assigns#edit"
  get "/assigns/instructors/:id/edit", to: "assigns#edit"
  post "/assigns/students/:id", to: "assigns#update"
  post "/assigns/instructors/:id", to: "assigns#update"

  root :to => "home#index"

  resources :home
    get "/home/login", to: "home#login"
    post "/home/login", to: "home#login"
  resources :users
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
end
