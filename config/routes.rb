Rails.application.routes.draw do

  root "students#index"
  get "students/index"
  get "sections/index"
  resources :students
  resources :sections
end
  