class AddCityToLivingrooms < ActiveRecord::Migration
  def change
    add_column :livingrooms, :city, :string
  end
end
