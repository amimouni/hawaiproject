class AddTitleToLivingrooms < ActiveRecord::Migration
  def change
    add_column :livingrooms, :title, :string
  end
end
