class AddPickupToBasket < ActiveRecord::Migration[7.0]
  def change
    add_column :baskets, :pickup, :datetime
    add_column :carts, :pickup, :datetime
  end
end
