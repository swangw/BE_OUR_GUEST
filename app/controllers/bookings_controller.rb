class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(params[:host_id])
  end

  def show

    @booking = Booking.find(params[:id])

  end

  def create
    @space = Space.find(params[:space_id])
    raise
    @booking = Booking.new(booking_params)
    @booking.space = @space

    @booking.save


  end
end
