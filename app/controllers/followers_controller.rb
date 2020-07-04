class FollowersController < ApplicationController
  before_action :set_user

  def index
    @followers = @user.followers
  end

  private

  def set_user
    @user = params[:user_nickname].present? ? User.find_by!(nickname: params[:user_nickname]) : current_user
  end
end
