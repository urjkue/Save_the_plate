class PagesController < ApplicationController
  def index
    # geocoding
  end
  def home
    @businesses = Business.all
    @ranbus = Business.all.sample(5)
    @ranbustwo = Business.all.sample(5)
    if params[:query].present?
      @bus = Basket.where(name: params[:query]).first
     if(@bus.nil?)
      @bus =  Business.where(name: params[:query]).first
     elsif(@bus.nil?)
      @bus = nil
     end
    else
      @bus = nil
    end
  end
  def discover
  end
  def category
    @category = params[:name]
  @businesses = Business.where(category: @category).all
  end
end
