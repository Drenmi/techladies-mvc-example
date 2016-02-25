class TweetsController < ApplicationController
  before_action :prepare_user

  def index
    @tweets = TweetService.new(@user.twitter_handle).all
  end

  private

  def prepare_user
    @user = User.find(params[:user_id])
  end
end
