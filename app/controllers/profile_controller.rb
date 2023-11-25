class ProfileController < ApplicationController
  def index
    if current_user
    @user_id = current_user.id
    @user = User.find(@user_id)
    @booking = Cart.where(user_id: @user_id)
    else
    end
  end
  def bookings
    @user_id = current_user.id
    @user = User.find(@user_id)
    @booking = Cart.where(user_id: @user_id)
  end
end
