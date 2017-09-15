Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/calculator", to: "calculator#show"
  post "/calculate", to: "calculator#calculate"
  get "/goback", to: "calculator#show"
end
