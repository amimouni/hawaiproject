class AddCoordinatesToLivingrooms < ActiveRecord::Migration
  def change
    add_column :livingrooms, :latitude, :float
    add_column :livingrooms, :longitude, :float
  end
end
