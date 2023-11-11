class Favourit < ApplicationRecord
  belongs_to :user
  has_many :basket
end
