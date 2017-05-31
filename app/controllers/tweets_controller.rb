class TweetsController < ApplicationController
  def index
    @tweets = client.status(27558893223)

    render("tweets/index.html.erb")
  end

  def show
    @tweet = Tweet.find(params[:id])


    render("tweets/show.html.erb")
  end

  def new
    @tweet = Tweet.new

    render("tweets/new.html.erb")
  end

  def create
    @tweet = Tweet.new

    @tweet.tweet_comments = params[:tweet_comments]
    @tweet.tweet_likes = params[:tweet_likes]

    save_status = @tweet.save

    if save_status == true
      redirect_to("/tweets/#{@tweet.id}", :notice => "Tweet created successfully.")
    else
      render("tweets/new.html.erb")
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])

    render("tweets/edit.html.erb")
  end

  def update
    @tweet = Tweet.find(params[:id])

    @tweet.tweet_comments = params[:tweet_comments]
    @tweet.tweet_likes = params[:tweet_likes]

    save_status = @tweet.save

    if save_status == true
      redirect_to("/tweets/#{@tweet.id}", :notice => "Tweet updated successfully.")
    else
      render("tweets/edit.html.erb")
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])

    @tweet.destroy

    if URI(request.referer).path == "/tweets/#{@tweet.id}"
      redirect_to("/", :notice => "Tweet deleted.")
    else
      redirect_to(:back, :notice => "Tweet deleted.")
    end
  end




end
