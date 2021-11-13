Rails.application.routes.draw do
  root to: 'landing#index'

  namespace :api do
    resources :alcohols
    resources :caffeines
    resources :exercises
    resources :late_meals
    resources :morning_suns
    resources :naps
    resources :relaxes
    resources :sessions, only: [:create]
    resources :sleeps do
      post "/start" => 'sleeps#start'
      patch "/end_good" => 'sleeps#end_good'
      patch "/end_bad" => 'sleeps#end_bad'
      post "/toggle" => 'sleeps#toggle'
      delete "/destroy_last" => 'sleeps#destroy_last'
    end
    resources :users, only: [:index, :show, :create]
  end
end
