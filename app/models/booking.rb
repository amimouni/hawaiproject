class Booking < ActiveRecord::Base
  belongs_to :livingroom
  belongs_to :user
  validates :total_amount, :arrival_date, :departure_date, :user_id, :livingroom_id, presence: true
end
