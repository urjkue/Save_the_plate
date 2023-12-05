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
      rediect_to home_path
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
  if params[:query].present?
    @businesses.each do |business|
      if business.name == params[:query]
        @bus = business
        break
      else
        @bus = nil
      end
    end
  else
    @bus = nil
  end
  end
  def splashscreen


  end
  def splashlogin

  end
end
