class ProfileController < ApplicationController
  def index
    @user_id = current_user.id
    @user = User.find(@user_id)
    @booking = Cart.where(user_id: @user_id)
  end
end
