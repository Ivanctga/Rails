Rails.application.routes.draw do  
  get '/site', to: 'site#index'
  root to: 'site#index'
  resources :authors
  resources :posts
  
  
  #get "up" => "rails/health#show", as: :rails_health_check
  
end
