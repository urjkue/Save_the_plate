class PagesController < ApplicationController
  def index
    # geocoding
  end
  def home
    @businesses = Business.all
    @ranbus = Business.all.sample(5)
    @ranbustwo = Business.all.sample(5)
    if params[:query].present?
      @bus  = Business.where("name ILIKE ?", "%#{params[:query]}%").first
     if(@bus.nil?)
      @bus  = Basket.where("name ILIKE ?", "%#{params[:query]}%").first
     elsif(@bus.nil?)
      @bus  = nil
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
        @bus  = business
        break
      else
        @bus  = Business.where("name ILIKE ?", "%#{params[:query]}%").first
      end
    end
  else
    @bus = nil
  end
  end
  def splashscreen


  end
  def splashlogin
  #   redirect_after_delay(splashlogin_path, 1)
  # end
  # private
  # def redirect_after_delay(path, delay)
  #   render js: "setTimeout(function() { window.location.href = '#{path}'; }, #{delay * 1000});"
  # end
  end
end
