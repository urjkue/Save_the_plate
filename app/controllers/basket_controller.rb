class BasketController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def show
    @baskets = Basket.find(params[:id])
    @business = Basket.where(id: @baskets.business_id)
  end
end
