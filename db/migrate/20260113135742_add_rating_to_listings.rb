class AddRatingToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :rating, :float
  end
end
