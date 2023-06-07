Rails.application.routes.draw do
  root "students#index"
  get "students/index"
  # "controller name/ action"
  # get "student_classes/index"
  resources :students

  get "students/index"


  # get 'student/new'
  # get 'student/show's
  # post 'student/create'



# get '/hotels', to: 'hotels#index'
# get '/hotels/:id', to: 'hotels#show'
# get '/hotels/new', to: 'hotels#new'
# post '/hotels', to: 'hotels#create'
# get '/hotels/:id/edit', to: 'hotels#edit'
# put '/hotels/:id', to: 'hotels#update'
# delete '/hotels/:id', to: 'hotels#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end