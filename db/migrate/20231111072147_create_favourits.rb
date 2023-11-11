class CreateFavourits < ActiveRecord::Migration[7.0]
  def change
    create_table :favourits do |t|
      t.references :basket, null:false , foreign_key: true
      t.references :user, null:false, foreign_key: true
      #Ex:- :null => false
      t.timestamps
    end
  end
end
