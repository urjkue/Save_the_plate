class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.references :user, null:false, foreign_key: true
      t.references :basket, null: false, foreign_key: true
      t.date :pick_up , null:false,deafult: 2023-12-10
      t.references :business, null:false,foreign_key: true
      t.timestamps
    end
  end
end
