class ActivitiesController < ApplicationController

  before_action :require_login

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def create
    puts "============================== params"
    p activity_params
    @activity = Activity.new(activity_params)


    #Set user as the activity type if no other active item is given
    if @activity.active_type.nil?
      @activity.active_id = Current.user.id
      @activity.active_type = "User"
    end

    puts "================== p activity"
    puts p @activity


    if @activity.save
      redirect_to @activity
    else
      flash[:danger] = "Activity was not created."
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :activity_type, :status, :active_type, :active_id, :due_date)
  end

end
