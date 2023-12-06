class FavouritesController < ApplicationController
  def index
    if current_user
      user_id = current_user.id
      @favourites = Favourit.where(user_id: user_id)
    end
  end

  def new
    if current_user

      @basket = Basket.find(params[:id])
      @check = Favourit.where(basket_id: @basket.id).first
      if @check == nil
      @favs = Favourit.new
      redirect_to favourit_create_path(@basket.id)
      else
        redirect_to favourit_path
      end
    else
      redirect_to new_user_session_path
    end
    # Assuming you want to redirect after initializing @favs

  end

  def create
    @favs = Favourit.new(
      user_id: current_user.id,
      basket_id: params[:id]
    )

    if @favs.save
      redirect_to favourit_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @basket = Basket.find(params[:id])
    @favourit = Favourit.where(basket_id: @basket.id).first
    if @favourit.destroy
      redirect_to favourit_path
    else
      redirect_to favourit_path
    end
  end

  def show
  end
end
