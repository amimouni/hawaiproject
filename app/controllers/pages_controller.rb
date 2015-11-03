class PagesController < ApplicationController
  def home
    @livingrooms = Livingroom.first(6)
  end
end
