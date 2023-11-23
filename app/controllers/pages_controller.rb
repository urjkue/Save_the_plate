class PagesController < ApplicationController
  def index
    # geocoding
  end
  def home
    @basket = Basket.all
    
  end
  def discover
  end
end
