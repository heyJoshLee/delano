  class BusinessesController < ApplicationController

    before_action :require_login

  def index
    @businessses = Current.user.organization.businesses
  end

  def new
    @business = Business.new
    @organization = Current.user.organization
  end

  def show
    @business = Business.find(params[:id])
  end

  def create
    @business = Business.new(business_params)
    @business.organization = Current.user.organization
    if @business.save
      flash[:success] = "Saved business."
      redirect_to organization_business_path(@business.organization, @business)
    else
      flash[:danger] = "Error. Business was not saved."
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @business = Business.find(params[:id])
    @organization = @business.organization
  end

  def update
    @business = Business.find(params[:id])

    if @business.update(business_params)
      redirect_to organization_business_path(@business.organization, @business)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def business_params
    params.require(:business).permit(:name)
  end
end
