class FolloweesController < ApplicationController
  before_action :set_user

  def index
    @followees = @user.followees
  end

  private

  def set_user
    @user = current_user
  end
end
