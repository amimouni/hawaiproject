class BookingsController < ApplicationController
  before_action :set_livingroom

  def availability
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.livingroom_id = @livingroom.id
    total_price = (@booking.departure_date - @booking.arrival_date) * @livingroom.price
    @booking.total_amount = total_price
    @booking.user = current_user

    if @booking.save
      redirect_to livingroom_path(@livingroom)
    else
      binding.pry
      render :new
    end
  end


  private

  def set_livingroom
    @livingroom = Livingroom.find(params[:livingroom_id])
  end

  def booking_params
    params.require(:booking).permit(:departure_date, :arrival_date)
  end

end
