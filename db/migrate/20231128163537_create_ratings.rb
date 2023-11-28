class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|

      t.timestamps
    end
  end
end
