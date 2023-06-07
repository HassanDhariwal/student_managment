Rails.application.routes.draw do
  root "students#index"
  get "students/index"
  resources :students

  get "students/index"


  
end