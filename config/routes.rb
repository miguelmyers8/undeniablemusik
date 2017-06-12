Rails.application.routes.draw do
  resources :owners
  resources :galleries
  resources :songs
  root to: 'visitors#index'
  get '/visitors/rob'
  get '/visitors/youn'
  get '/visitors/amhad'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
