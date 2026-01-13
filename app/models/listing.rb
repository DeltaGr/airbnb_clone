class Listing < ApplicationRecord
  belongs_to :user
  # Kein serialize nötig, Rails behandelt Array ↔ JSON automatisch
end
