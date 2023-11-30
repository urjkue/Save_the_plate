class PagesController < ApplicationController
  def index
    # geocoding
  end
  def home
    @businesses = Business.all
    @ranbus = Business.all.sample(5)
  end
  def discover
  end
  def category
    @category = params[:name]
  @businesses = Business.where(category: @category).all
  end
end
