Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :students
  resources :instructors
  resources :employees
  resources :courses
  resources :cohorts
end
