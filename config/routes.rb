Rails.application.routes.draw do
  get 'sections/index'

  get 'sections/show'

  get 'sections/new'

  get 'sections/create'

  get 'sections/edit'

  get 'sections/update'

  root "students#index"
  get "students/index"
  resources :students


  get "students/index"


  
end