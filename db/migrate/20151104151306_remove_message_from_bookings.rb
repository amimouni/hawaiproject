class RemoveMessageFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :message
  end
end
