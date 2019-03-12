Rails.application.routes.draw do
  namespace :api do
    get "/users" => 'users#index'
    post "/users" => 'users#create'

    post "/sessions" => 'sessions#create'

    get "/sleeps" => 'sleeps#index'
    get "/sleeps/:id" => 'sleeps#show'
    get '/sleeps/new' => 'sleeps#new'
    post "/sleeps" => 'sleeps#create'
    patch "/sleeps/:id" => 'sleeps#update'
    delete "/sleeps/:id" => 'sleeps#destroy'

    get "/exercises" => 'exercises#index'
    get "/exercises/:id" => 'exercises#show'
    get '/exercises/new' => 'exercises#new'
    post "/exercises" => 'exercises#create'
    patch "/exercises/:id" => 'exercises#update'
    delete "/exercises/:id" => 'exercises#destroy'

    get "/morning_suns" => 'morning_suns#index'
    get "/morning_suns/:id" => 'morning_suns#show'
    get '/morning_suns/new' => 'morning_suns#new'
    post "/morning_suns" => 'morning_suns#create'
    patch "/morning_suns/:id" => 'morning_suns#update'
    delete "/morning_suns/:id" => 'morning_suns#destroy'

    get "/naps" => 'naps#index'
    get "/naps/:id" => 'naps#show'
    get '/naps/new' => 'naps#new'
    post "/naps" => 'naps#create'
    patch "/naps/:id" => 'naps#update'
    delete "/naps/:id" => 'naps#destroy'

    get "/relaxes" => 'relaxes#index'
    get "/relaxes/:id" => 'relaxes#show'
    get '/relaxes/new' => 'relaxes#new'
    post "/relaxes" => 'relaxes#create'
    patch "/relaxes/:id" => 'relaxes#update'
    delete "/relaxes/:id" => 'relaxes#destroy'

    get "/alcohols" => 'alcohols#index'
    get "/alcohols/:id" => 'alcohols#show'
    get '/alcohols/new' => 'alcohols#new'
    post "/alcohols" => 'alcohols#create'
    patch "/alcohols/:id" => 'alcohols#update'
    delete "/alcohols/:id" => 'alcohols#destroy'

    get "/caffeines" => 'caffeines#index'
    get "/caffeines/:id" => 'caffeines#show'
    get '/caffeines/new' => 'caffeines#new'
    post "/caffeines" => 'caffeines#create'
    patch "/caffeines/:id" => 'caffeines#update'
    delete "/caffeines/:id" => 'caffeines#destroy'

    get "/late_meals" => 'late_meals#index'
    get "/late_meals/:id" => 'late_meals#show'
    get '/late_meals/new' => 'late_meals#new'
    post "/late_meals" => 'late_meals#create'
    patch "/late_meals/:id" => 'late_meals#update'
    delete "/late_meals/:id" => 'late_meals#destroy'
  end
end
