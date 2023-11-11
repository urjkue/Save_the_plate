class AddBusinessToBasket < ActiveRecord::Migration[7.0]
  def change
    add_reference :baskets, :business, null:false ,foreign_key: true
  end
end
