Rails.application.routes.draw do
  get 'post/index'
  get 'users/index'
  get "/" =>"home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "post/create" => "post#create"
  
  post "post/save" => "post#save"
  
  get "post/new" => "post#new"
  get "about" => "home#about"
  get "post/index" => "post#index"
  get "post/:id" => "post#show"
  
  
end
