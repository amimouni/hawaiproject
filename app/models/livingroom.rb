class Livingroom < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  validates :capacity, :price_per_day, :address, presence: true
end
