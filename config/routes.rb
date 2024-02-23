Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"


resources :organizations do 
  resources :businesses
  resources :contacts
  resources :deals
end


  resources :users
  resources :sessions
  resources :activities
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

end
