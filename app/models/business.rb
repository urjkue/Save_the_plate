class Business < ApplicationRecord
  has_many :basket_id, dependent: :destroy
  has_many :review, dependent: :destroy
end
