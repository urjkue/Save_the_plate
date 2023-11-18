class LocalisationsController < ApplicationController
  def localisation
    @businesses = Business.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @businesses.geocoded.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude
        info_window_html: render_to_string(partial: "info_window", locals: {Business: business})
      }
    end
  end
end
