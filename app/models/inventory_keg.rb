class InventoryKeg < ApplicationRecord
  belongs_to :tap
  
  scope :most_recent, -> { order(created_at: :desc).limit(5)}
end