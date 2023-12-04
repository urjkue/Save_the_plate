class BasketController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def show
    @baskets = Basket.find(params[:id])
    @business = Business.where(id: @baskets.business_id).first
    @user_id = current_user.id
    @user = User.find(@user_id)
    @booking = Cart.where(user_id: @user_id).all
  end
end
