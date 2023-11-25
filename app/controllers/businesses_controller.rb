class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @businesses.geocoded.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {business: business})
      }
    end
  end

end
