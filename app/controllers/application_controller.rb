class ApplicationController < ActionController::Base

  helper_method :user_signed_in?

  private
  def user_signed_in?
    session[:user_token]
  end

end
