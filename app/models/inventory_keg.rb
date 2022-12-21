class InventoryKeg < ApplicationRecord
  belongs_to :tap, optional: true
  # validates :brand, :brewery, :date_received, :priority, :abv, :price, :serving_size, :serving_price, :keg_size, presence: true
  scope :most_recent, -> { order(created_at: :desc).limit(5)}

  def self.find_next_keg(tap)
    if InventoryKeg.where("taps_id = ?", tap.id).any?
      if InventoryKeg.where("taps_id = ?", tap.id).where(priority: true).any?
        InventoryKeg.where("taps_id = ?", tap.id).where(priority: true).order(:date_received).first
      elsif InventoryKeg.where("taps_id = ?", tap.id).where(partial: true).any?
        InventoryKeg.where("taps_id = ?", tap.id).where(partial: true).order(:date_received).first
      else
        InventoryKeg.where("taps_id = ?", tap.id).order(:date_received).first
      end
    
    elsif InventoryKeg.where("style = ?", tap.tap_style).any?
      if InventoryKeg.where("style = ?", tap.tap_style).where(priority: true).any?
        InventoryKeg.where("style = ?", tap.tap_style).where(priority: true).order(:date_received).first
      elsif InventoryKeg.where("style = ?", tap.tap_style).where(partial: true).any?
        InventoryKeg.where("style = ?", tap.tap_style).where(partial: true).order(:date_received).first
      else
        InventoryKeg.where("style = ?", tap.tap_style).order(:date_received).first
      end

    else
      if InventoryKeg.where(priority: true).any?
        InventoryKeg.where(priority: true).order(:date_received).first
      elsif InventoryKeg.where(partial: true).any?
        InventoryKeg.where(partial: true).order(:date_received).first
      else
        InventoryKeg.order(:date_received).first
      end
    end

  end
  
end