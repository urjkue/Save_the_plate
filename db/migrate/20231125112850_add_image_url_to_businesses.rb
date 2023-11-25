class AddImageUrlToBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_column :businesses, :image_url, :string
  end
end
