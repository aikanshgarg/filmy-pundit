Rails.application.routes.draw do
  
  devise_for :users

# scaffold generated
  resources :movies do
  	resources :reviews, except: [:show, :index]
  end

  root 'movies#index'
  
end
