class FavouritesController < ApplicationController
  def index
    user_id = current_user.id
    @favourites = Favourit.where(user_id: user_id)
  end

  def new
    @basket = Basket.find(params[:id])
    @favs = Favourit.new
    # Assuming you want to redirect after initializing @favs
    redirect_to favourit_create_path(@basket.id)
  end

  def create
    @favs = Favourit.new(
      user_id: current_user.id,
      basket_id: params[:id]
    )

    if @favs.save
      redirect_to favourit_path, notice: "Favourit was successfully created."
    else
      # Handle the case where the @favs object fails to save
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @favourit = Favourit.find(params[:id])
    if @favourit.destroy
      redirect_to favourit_path, notice: "Favourit was successfully destroyed."
    else
      redirect_to favourit_path, notice: "Favourit was not destroyed."
    end
  end

  def show
  end
end
