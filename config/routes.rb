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

    get "/exercise" => 'exercise#index'
    get "/exercise/:id" => 'exercise#show'
    get '/exercise/new' => 'exercise#new'
    post "/exercise" => 'exercise#create'
    patch "/exercise/:id" => 'exercise#update'
    delete "/exercise/:id" => 'exercise#destroy'

    get "/morning_sun" => 'morning_sun#index'
    get "/morning_sun/:id" => 'morning_sun#show'
    get '/morning_sun/new' => 'morning_sun#new'
    post "/morning_sun" => 'morning_sun#create'
    patch "/morning_sun/:id" => 'morning_sun#update'
    delete "/morning_sun/:id" => 'morning_sun#destroy'

    get "/maps" => 'maps#index'
    get "/maps/:id" => 'maps#show'
    get '/maps/new' => 'maps#new'
    post "/maps" => 'maps#create'
    patch "/maps/:id" => 'maps#update'
    delete "/maps/:id" => 'maps#destroy'

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
