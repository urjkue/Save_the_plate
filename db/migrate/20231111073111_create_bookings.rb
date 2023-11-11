class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :cart_id,array: true, default: []
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end
