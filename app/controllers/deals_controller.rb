class DealsController < ApplicationController

  def index
    @deals = Deal.all
  end

  def new
    @deal = Deal.new
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def create
    puts deal_params
    @deal = Deal.new(deal_params)
    if @deal.save
      redirect_to @deal
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def deal_params
    params.require(:deal).permit(:name, :source, :rating, :status, :notes)
  end


end