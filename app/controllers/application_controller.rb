class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user
  helper_method :is_admin?
  helper_method :current_user

  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def is_admin?
    current_user && current_user.admin
  end

end
