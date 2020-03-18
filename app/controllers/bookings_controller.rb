class BookingsController < ApplicationController
  def index
    @host = Host.find(params[:host_id])
    @bookings = @host.bookings
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.space = @space

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "spaces/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :client_name, :client_email)
  end
end

