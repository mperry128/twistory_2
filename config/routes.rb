Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
