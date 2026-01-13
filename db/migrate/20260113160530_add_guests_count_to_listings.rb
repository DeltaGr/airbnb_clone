class AddGuestsCountToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :guests_count, :integer, default: 1
  end
end
