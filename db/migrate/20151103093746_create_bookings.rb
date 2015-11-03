class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :total_amount
      t.date :arrival_date
      t.date :departure_date
      t.references :livingroom, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
