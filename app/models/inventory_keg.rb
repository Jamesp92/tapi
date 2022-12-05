class InventoryKeg < ApplicationRecord
  scope :most_recent, -> { order(created_at: :desc).limit(5)}
end