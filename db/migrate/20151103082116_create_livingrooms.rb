class CreateLivingrooms < ActiveRecord::Migration
  def change
    create_table :livingrooms do |t|
      t.integer :capacity
      t.text :description
      t.integer :price
      t.text :address
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
