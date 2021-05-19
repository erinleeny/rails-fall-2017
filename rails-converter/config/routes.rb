Rails.application.routes.draw do

get '/convert/:num/:first/to/:second', to: 'converter#index'
root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
