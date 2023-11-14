class ChangesToBusiness < ActiveRecord::Migration[7.0]
  def change
    remove_reference :businesses, :cart, foreign_key: true
  end
end
