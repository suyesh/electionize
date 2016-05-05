require 'twitter'
require 'pry'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['twitter_consumer_key']
  config.consumer_secret     = ENV['twitter_consumer_secret']
  config.access_token        = ENV['twitter_access_token']
  config.access_token_secret = ENV['twitter_access_secret']
end

trump_tweets = client.search("#MakeAmericaGreatAgain", result_type: "all")
bernie_tweets = client.search("#FeelTheBern", result_type: "all")
