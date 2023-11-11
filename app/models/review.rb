class Review < ApplicationRecord
  belong_to :user, :business
end
