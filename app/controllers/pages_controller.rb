class PagesController < ApplicationController
  def index
    # geocoding
  end
  def home
    @businesses = Business.all
  end
  def discover
  end
end
