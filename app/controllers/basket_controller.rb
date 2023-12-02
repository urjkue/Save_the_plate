class BasketController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def show
    @baskets = Basket.find(params[:id])
    @business = Business.where(id: @baskets.business_id).first
  end
end
