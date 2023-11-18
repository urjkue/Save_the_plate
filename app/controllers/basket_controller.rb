class BasketController < ApplicationController
  def index
  end
  def show
    @basket = Basket.find(params[:id])
  end
end
