class AddRoomTypeAndDatesToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :room_type, :string
    add_column :listings, :dates, :string
  end
end
