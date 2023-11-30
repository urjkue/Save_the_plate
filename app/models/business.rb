class Business < ApplicationRecord
  has_many :basket_id #, dependent: :destroy
  has_many :review#, dependent: :destroy
  # has_one_attached :photo
  # geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
