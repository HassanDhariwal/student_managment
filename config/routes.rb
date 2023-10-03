Rails.application.routes.draw do

  get 'homes/index'
  root "students#index"
  get "sections/index"
  get 'teachers/index'
  resources :students
  resources :sections
  resources :teachers
end
  