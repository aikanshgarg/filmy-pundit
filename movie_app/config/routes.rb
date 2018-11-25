Rails.application.routes.draw do
  
  devise_for :users
# scaffold generated
  resources :movies

  root 'movies#index'
  
end
