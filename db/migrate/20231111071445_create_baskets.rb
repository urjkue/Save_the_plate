class CreateBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :baskets do |t|
      t.string :name ,null:false,default:""
      t.string :description ,null:false,default:""
      t.float :price ,null:false,default:0.00
      t.date :availability , null:false,deafult: 2023-12-10
      #Ex:- :default =>''
      t.timestamps
    end
  end
end
