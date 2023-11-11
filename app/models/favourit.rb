class Favourit < ApplicationRecord
  belong_to :user
  has_many :basket
end
