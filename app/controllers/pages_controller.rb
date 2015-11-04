class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @livingrooms = Livingroom.first(6)
  end
end
