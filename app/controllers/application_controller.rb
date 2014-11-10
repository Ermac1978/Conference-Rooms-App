class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  def authenticate
    if current_user
      return true
    else
      flash[:warning] = "You must sign in first!"
      redirect_to root_path
    end
  end

  def require_admin
    if current_user.role == 'admin'
      return true
    else
      redirect_to root_path
    end
  end

  def signed_in?
    current_user
  end


  helper_method :current_user
  helper_method :signed_in?


end