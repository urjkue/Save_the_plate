class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment , null:false , default:""
      t.float :rating , null:false , default:0.00
      t.references :business, null:false , foreign_key: true
      t.timestamps
    end
  end
end
