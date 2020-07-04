class FollowersController < ApplicationController
  before_action :set_user

  def index
    @followers = @user.followers
  end

  private

  def set_user
    @user = current_user
  end
end
