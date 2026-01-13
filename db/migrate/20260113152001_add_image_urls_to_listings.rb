class AddImageUrlsToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :image_urls, :json
  end
end
