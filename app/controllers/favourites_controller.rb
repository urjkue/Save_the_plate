class FavouritesController < ApplicationController
  def index
    user_id = current_user.id
    @favourites = Favourit.find(user_id)

  end
  def new
    
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end
  def show
  end
end
