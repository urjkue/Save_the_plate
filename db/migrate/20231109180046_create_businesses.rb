class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :category, null: false, default: ""
      t.string :name, null:false,default:""
      t.string :description, null:false,default:""
      t.string :address,null:false,default:""
      t.float :latitude,null: false,default:0.00
      t.float :longitude,null:false,default:0.00
      t.timestamps
    end
  end
end
