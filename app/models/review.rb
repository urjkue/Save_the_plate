class Review < ApplicationRecord
  belongs_to :user
  belongs_to :business
  validates :comment, presence: true, length: { minimum: 6 }
  # validates :rating, presence: true, value: { maximum: 10 }
end
