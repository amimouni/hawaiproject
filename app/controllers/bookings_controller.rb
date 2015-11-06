class BookingsController < ApplicationController
  before_action :set_livingroom


  def new
    @booking = Booking.new
    @booking.departure_date = params[:departure_date].to_date
    @booking.arrival_date = params[:arrival_date].to_date
    @booking.total_amount = params[:total_amount].to_i
    # @BOOKING_PROPERTIES = { departure_date: @booking.departure_date, arrival_date: @booking.arrival_date, total_amount: @booking.total_amount}
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.livingroom_id = @livingroom.id
    # total_price = (@booking.departure_date - @booking.arrival_date) * @livingroom.price
    # @booking.total_amount = total_price
    @booking.user = current_user
    @booking.status = "sent_to_host"

    if @booking.save
      render :confirm
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.status.update
  end


  def confirm
  end

  private

  def set_livingroom
    @livingroom = Livingroom.find(params[:livingroom_id])
  end

  def booking_params
    params.require(:booking).permit(:departure_date, :arrival_date, :total_amount, :message, :status)
  end

end
