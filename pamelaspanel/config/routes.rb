Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
  resources :users
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts

end
