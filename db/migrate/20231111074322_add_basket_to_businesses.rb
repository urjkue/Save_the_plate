class AddBasketToBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_reference :businesses, :cart, null:false ,foreign_key: true
  end
end
