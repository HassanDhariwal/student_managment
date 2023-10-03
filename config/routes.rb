Rails.application.routes.draw do

  get 'homes/index'
  get 'search',to: "students#search"
  root "students#index"
  get "sections/index"
  get 'teachers/index'
  resources :students do
    collection do
      get 'search'
      # /students/search for searching students
    end
  end

    resources :sections
  resources :teachers
end
  