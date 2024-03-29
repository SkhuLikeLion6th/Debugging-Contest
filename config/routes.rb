Rails.application.routes.draw do
  devise_for :users
  
  root '/'
  
  #post routes
  get 'home/index'
  
  get 'home/new'
  
  post 'home/create'
  
  get 'home/delete/:post_id' -> 'home#delete'
  
  get 'home/edit/:post_id' -> 'home#edit'
  
  get 'home/update/:post_id' -> 'home#update'
  
  #comment routes
  post '/home/index/:post_id/create' -> 'comment#create'

  get 'comments/delete/:comment_id' -> 'comment#delete'
end
