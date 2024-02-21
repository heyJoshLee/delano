class SessionsController < ApplicationController

  layout "not_logged_in"

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in successfully."
      redirect_to root_path
    else
      flash[:danger] = "Error with logging in."
      render :new, message: "Error with Logging in"
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:info] = "Successfully logged out."
    redirect_to root_path
  end

end