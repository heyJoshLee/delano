class ApplicationController < ActionController::Base

  add_flash_types :info, :error, :warning, :success
 
  def require_login
    if !set_current_user
      flash[:danger] = "You must be logged in to view that page."
      redirect_to new_session_path
    end

  end

  def set_current_user
    return Current.user if Current.user
    if (session[:user_id] && User.find_by(id: session[:user_id]))
      Current.user = User.find_by(id: session[:user_id])
    else
      false
    end
  end


end
