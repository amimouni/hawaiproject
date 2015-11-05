class AddLivingroomToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :livingroom, index: true, foreign_key: true
  end
end
