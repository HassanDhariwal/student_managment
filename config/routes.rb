Rails.application.routes.draw do

  get 'homes/index'
  get 'search',to: "students#search"


  root "students#index"
  get "sections/index"
  get 'teachers/index'


  resources :students do
    collection do
      get 'search'
      get 'search1'

      # /students/search for searching students
    end
  end

    resources :sections do
      collection do
        get 'search'
      end
    end

  resources :teachers do
    collection do
      get 'search'
    end
  end
end
  