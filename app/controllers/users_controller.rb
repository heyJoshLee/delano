class UsersController < ApplicationController

  layout "not_logged_in", except: [:show]


  def create

    @user = User.new(user_params)

    @user.organization = Organization.create(name: "auto generated") # TODO: Update user / org flow

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new, status: 401
    end
  end

  def new
    @user = User.new
  end

  def show

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

end