class Tap < ApplicationRecord
  has_many :inventory_kegs
  
  def self.kick(params)
    keg = InventoryKeg.find(params[:id]) #find keg being kicked
    tap = Tap.find(keg.taps_id) #find tap being changed
    keg.update(taps_id: nil)
    keg = Tap.filter(keg.attributes) #add and remove attributes to prepare for inserting into archive
    Archive.create!(keg) #archive keg
    tap.update(keg_on_id: tap.keg_on_deck_id, keg_on_deck_id: nil)
    InventoryKeg.find(params[:id]).delete
    next_keg = InventoryKeg.find_next_keg(tap) #search database for next keg
    next_keg.update(taps_id: tap.id, position: 0)
    tap.update(keg_on_deck_id: next_keg.id) #update keg_id's in current tap
  end

  def self.filter(keg)
    keg.delete("id")
    keg.delete("position")
    keg.delete("taps_id")
    keg = keg.merge({"date_kicked"=>Date.current.to_fs})
    keg = keg.merge({"duration"=> nil})
  end

end
