Rails.application.routes.draw do

  root "students#index"
  get "students/index"
  get "sections/index"
  get 'teachers/index'
  resources :students
  resources :sections
  resources :teachers
end
  