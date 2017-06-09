Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"
  post "/quick_create", :controller=> "comments", :action=>"quick_create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Tweet resource:
  # CREATE
  get "/tweets/new", :controller => "tweets", :action => "new"
  post "/create_tweet", :controller => "tweets", :action => "create"

  # READ
  # get "/tweets", :controller => "application", :action => "client.get_all_tweets"
  get "/tweets", :controller => "tweets", :action => "index"
  get "/tweets/:id", :controller => "tweets", :action => "show"

  # UPDATE
  get "/tweets/:id/edit", :controller => "tweets", :action => "edit"
  post "/update_tweet/:id", :controller => "tweets", :action => "update"

  # DELETE
  get "/delete_tweet/:id", :controller => "tweets", :action => "destroy"
  #------------------------------

  # Routes for the Users resource:
  # CREATE

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_users/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the My Likes resource:
  # CREATE
  post "/quick_like", :controller=> "my_likes", :action=>"quick_like"
  # get "/likes/new", :controller => "likes", :action => "new"
  # post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/my_likes", :controller => "my_likes", :action => "index"
  get "/my_likes/:id", :controller => "my_likes", :action => "show"

  # UPDATE
  get "/my_likes/:id/edit", :controller => "my_likes", :action => "edit"
  post "/update_my_like/:id", :controller => "my_likes", :action => "update"

  # DELETE
  get "/delete_my_like/:id", :controller => "my_likes", :action => "destroy"
  get "/delete_like", :controller=>"my_likes", :action=>"quick_destroy"
  #------------------------------


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
