class Livingroom < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, :dependent => :destroy
  has_many :pictures, :dependent => :destroy
  validates :capacity, :price, :city, :address, presence: true
end


