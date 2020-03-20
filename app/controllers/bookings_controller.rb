class BookingsController < ApplicationController
  def index
    @host = Host.find(params[:host_id])
    @bookings = @host.bookings
    @time = Time.now
    @bookingsStarting = @bookings.where("extract(hour from start_time) >= ? AND extract(hour from start_time) <= ?", Time.now.hour, Time.now.hour + 1).order("start_time")
    @bookingsAfter = @bookings.where("extract(hour from start_time) > ?", Time.now.hour + 1).order("start_time")
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

  def confirmed!
    @booking.confirmed
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :client_name, :client_email)
  end
end
