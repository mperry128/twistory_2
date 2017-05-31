require "pry"

namespace :poll do
  desc "TODO"
  task tweets: :environment do
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["CONSUMER_KEY"]
        config.consumer_secret     = ENV["CONSUMER_SECRET"]
        config.access_token        = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_SECRET"]
    end

    client.search("to:justinbieber marry me", result_type: "recent").take(1).collect do |tweet|
      ap "#{tweet.user.screen_name}: #{tweet.text}"

  end

  binding.pry
end
end
