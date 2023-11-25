class CartsController < ApplicationController
  def index
  end
  def new
    @params = params[:id]
  end
  def create
    @basket = Basket.find(params[:id])
    @business = @basket.business_id
    @user = current_user.id
    @pick_up = @basket.availability
    @basket_id = @basket.id
    # business_id = @business.id


    @booking = Cart.new(
      user_id: @user,
      basket_id: @basket_id,
      business_id: @business,
      pick_up: @pick_up
    )
    if @booking.save
      redirect_to profile_path, notice: 'Booking was successfully created.'
    else

      render :profile , notice: 'Booking was not successfully created.'
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end
  def show
    @params = params[:id]
      if params[:fname].present? && params[:lname].present? && params[:cardnum].present? && params[:expdate].present? && params[:cvv].present?
        # Form is filled, you can redirect here
        redirect_to cart_create_path, notice: 'Form is filled, redirecting...'
      else
        # Form is not completely filled, show an error or redirect back to the form
        redirect_to cart_payment_path, alert: 'Please fill in all fields'
      end
  end
  def payment
    @params = params[:id]
  end
end
