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

# def find_tweet
#
#   client = Twitter::REST::Client.new do |config|
#     config.consumer_key        = "Q20s4Ywn4dvDhL9MbUxnlMbVgY"
#     config.consumer_secret     = "cHeN0vuz9RHjbrlaNsSw1rdnhsPl1pB6uejuRextj4POcwFaIx"
#     config.access_token        = "2879734690-9kB46HnGy9B93KHqpw6V1rVbP2tlvacByqeiE7"
#     config.access_token_secret = "f6wfoDDYjHuhtHyeZjWcd7o2mxQ3iJ8EqhBZedMXW80pp"
#   end
# end


end
