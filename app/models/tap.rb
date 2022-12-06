class Tap < ApplicationRecord
  has_many :inventory_kegs
  
  def self.kick
  end
end
