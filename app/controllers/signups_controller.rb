class SignupsController < ApplicationController
  skip_before_action :authenticate, only: [:index, :signup]

  def index
  end

  def signup
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "Thank you for signing in, you may now manage your Conference Rooms"
    else
      flash[:error] = "Sign up failed!"
    end
    redirect_to conf_rooms_path
  end
end
