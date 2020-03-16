class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(params[:host_id])
  end

  def show

    @booking = Booking.find(params[:id])

  end

  def create
    @space = Space.find(params[:space_id])

    @booking = Booking.new(booking_params)
    @booking.space = @space

    @booking.save


  end

  private

  def booking_params
    params.require(:booking).permit()
  end
end
