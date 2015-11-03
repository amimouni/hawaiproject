class Booking < ActiveRecord::Base
  belongs_to :livingroom
  belongs_to :user
  validates :total_amount, :arrival_date, :departure_date, presence: true
end
