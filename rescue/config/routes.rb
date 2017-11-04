Rails.application.routes.draw do
<<<<<<< HEAD
  resources :animals
#get "/animals", to: "animals#index"
#get "/animals/new", to: "animals#new"
#get "/animals/:id", to: "animals#show"
# post "/animals", to: "animals#create"

=======
  # =>   action       controller to access
#  get "/animals", to: "animals#index"
#  get "/animals/new", to: "animals#new"
#  get "/animals/:id", to: "animals#show"
#  post "/animals", to: "animals#create"
resources :animals, only: [:index, :show]
resources :animals do
  collection do
    get 'list'
  end
end
 #resources :animals, except: [:create, :new]
>>>>>>> master
end
