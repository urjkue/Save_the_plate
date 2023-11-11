class AddUserToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :users, null:false ,foreign_key: true
  end
end
