Rails.application.routes.draw do
  #GET /about
  get "about", to: "about#index"  #calls for about_controller and index method inside that 
  root to: "main#index"  #can be written as get "" or get "/" instead of root asroot is main page so we can use root
  get "sign_up", to:"registrations#new"
  post "sign_up", to:"registrations#create"  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
