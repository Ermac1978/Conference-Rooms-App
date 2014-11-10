class WelcomeController < ApplicationController
  skip_before_action :authenticate, only: [:index, :signin]

  def index
  end

  def signin
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "You successfully signed in!"
    else
      session[:user_id] = nil
      flash[:error] = "Sign in failed!"
    end
    redirect_to conf_rooms_path
  end

  def signout
    session[:user_id] = nil
    flash[:warning] = "Your are now signed out"
    redirect_to root_path
  end

end
