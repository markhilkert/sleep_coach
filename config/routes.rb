Rails.application.routes.draw do
  namespace :api do
    get 'exercises/index'
    get 'exercises/create'
  end
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"


  end
end
