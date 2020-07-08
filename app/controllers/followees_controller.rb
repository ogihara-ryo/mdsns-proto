class FolloweesController < ApplicationController
  before_action :required_sign_in
  before_action :set_user
  before_action :set_follower, only: %i[create destroy]

  def index
    @followees = @user.followees
  end

  def create
    current_user.follow(@follower)
    render :refresh
  end

  def destroy
    current_user.unfollow(@follower)
    render :refresh
  end

  private

  def set_user
    @user = current_user
  end

  def set_follower
    @follower = User.find(params[:id])
  end
end
