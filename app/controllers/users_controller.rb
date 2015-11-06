class UsersController < ApplicationController

  def show
    @user = current_user
    @bookings_made = @user.bookings
    @livingrooms = @user.livingrooms
    # la ligne suivante ne marche pas:
    # @bookings_received = @livingrooms.bookings
  end

end
