class Livingroom < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  validates :capacity, :price, :address, presence: true
end
