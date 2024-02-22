class ApplicationController < ActionController::Base

  add_flash_types :info, :error, :warning, :success
 
  def require_login
    if !current_user
      flash[:danger] = "You must be logged in to view that page."
      redirect_to new_session_path
    end

  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


end
