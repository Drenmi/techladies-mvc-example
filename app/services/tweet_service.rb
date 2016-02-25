# Pretend that this service gets stuff from Twitter.
# It doesn't actually get anything from Twitter though. :-3
class TweetService
  def initialize(twitter_handle)
    @twitter_handle = twitter_handle
  end

  def all
    (TWEETS[@twitter_handle] || []).map { |tweet| Tweet.new(tweet) }
  end
end
