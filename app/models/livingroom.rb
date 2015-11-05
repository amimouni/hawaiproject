class Livingroom < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  has_many :pictures, :dependent => :destroy
  validates :capacity, :price, :city, :address, presence: true
end


