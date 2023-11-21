class BasketController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def show
    @baskets = Basket.find(params[:id])
  end
end
