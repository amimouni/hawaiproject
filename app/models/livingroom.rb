class Livingroom < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  validates :capacity, :price, :city, :address, presence: true
end
