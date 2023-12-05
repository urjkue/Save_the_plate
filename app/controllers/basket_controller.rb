class BasketController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def show
    @baskets = Basket.find(params[:id])
    @business = Business.where(id: @baskets.business_id).first
    @user_id = current_user.id
    @user = User.find(@user_id)
    @booking = Cart.where(basket_id: @baskets.id).all
    @check = false
    @booking.each do |bookin|
      if bookin.user_id == @user_id
        @check = true
        break
      else
      @check = false
      end
    end
  end
end
