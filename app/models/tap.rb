class Tap < ApplicationRecord
  has_many :inventory_kegs
  
  def self.kick(params)
    keg = InventoryKeg.find(params[:id])
    tap = Tap.find(keg.taps_id)
    keg = Tap.filter(keg.attributes)
    Archive.create!(keg)
    next_keg = Tap.find_next_keg(keg.id)
    tap.update(keg_on_id: tap.keg_on_deck_id, keg_on_deck_id: next_keg)
  end

  def self.filter(keg)
    keg.delete("id")
    keg.delete("position")
    keg.delete("taps_id")
    keg = keg.merge({"date_kicked"=>Date.current.to_fs})
    keg = keg.merge({"duration"=> nil})
  end

end
