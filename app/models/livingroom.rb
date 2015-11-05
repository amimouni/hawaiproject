class Livingroom < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address
  after_validation(:geocode, { :if => :address_changed? })

  has_many :bookings, :dependent => :destroy
  has_many :pictures, :dependent => :destroy

  validates :capacity, :price, :city, :address, presence: true
end


