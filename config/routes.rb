Rails.application.routes.draw do
  #GET /about
  get "about", to: "about#index"  #calls for about_controller and index method inside that 
  get "password", to:"passwords#edit", as: :edit_password
  patch "password", to:"passwords#update"
  
  root to: "main#index"  #can be written as get "" or get "/" instead of root asroot is main page so we can use root
  get "sign_up", to:"registrations#new"
  post "sign_up", to:"registrations#create" 
  get "sign_in", to:"sessions#new"
  post "sign_in", to:"sessions#create"   
  delete "logout", to:"sessions#destroy"
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
