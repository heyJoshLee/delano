class DealsController < ApplicationController

  before_action :require_login

  def index
    @deals = Current.user.deals
  end

  def new
    @deal = Deal.new
    @organization = Current.user.organization
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def create
    puts deal_params
    @deal = Deal.new(deal_params)
    @deal.user_id = Current.user.id
    @deal.organization_id = Current.user.organization_id
    if @deal.save
      redirect_to organization_deal_path(@deal.organization, @deal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @deal = Deal.find(params[:id])
    @organization = @deal.organization
  end

  def update
    @deal = Deal.find(params[:id])
    @organization = @deal.organization
    if @deal.update(deal_params)
      redirect_to organization_deal_path(@organization, @deal)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def deal_params
    params.require(:deal).permit(:name, :source, :rating, :status, :notes)
  end


end