class FavouritesController < ApplicationController
  def index
    user_id = current_user.id
    @favourites = Favourit.find(user_id)

  end
  def new
    @fav = Favourit.new
  end
  def create
    @fav = Favourit.new
    @fav.user_id = current_user.id
    @fav.basket_id = params[:basket_id]
    if @fav.save
      redirect_to favourites_path
    else
      render :new
    end
  end 
  def edit
  end
  def update
  end
  def destroy
    @fav
  end
  def show
  end
end
