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
     redirect_to cart_thx_path
    else

      redirect_to home_path
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
    if params[:fname].to_s.match?(/\A[\p{L}\s]+\z/) &&   # Only letters and spaces allowed
       params[:lname].to_s.match?(/\A[\p{L}\s]+\z/) &&   # Only letters and spaces allowed
       params[:cardnum].to_s.match?(/\A\d{16}\z/) &&      # 16-digit card number
       params[:expdate].to_s.match?(/\A\d{2}\/\d{2}\z/) && # MM/YY format for expiration date
       params[:cvv].to_s.match?(/\A\d{3,4}\z/)            # 3 or 4 digit CVV
      # Form fields match the expected regex patterns
      redirect_to cart_create_path
    else
      # Form is not completely filled or contains invalid data, show an error or redirect back to the form
      redirect_to cart_payment_path
    end

  end
  def payment
    @params = params[:id]
  end

  def thx
  end
end
