class ApplicationController < ActionController::Base
  helper_method :current_user, :signed_in?

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def signed_in?
    current_user.present?
  end

  def required_sign_in
    redirect_to root_path unless signed_in?
  end
end
