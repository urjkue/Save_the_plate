class RmNullToTables < ActiveRecord::Migration[7.0]
  def change
    remove_reference :businesses, :basket, foreign_key: true
    add_reference :businesses, :basket, null:true ,foreign_key: true
  end
end
