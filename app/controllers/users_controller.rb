class UsersController < ApplicationController

  layout "not_logged_in"

  def create
    user = User.new(user_params)
    if user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end