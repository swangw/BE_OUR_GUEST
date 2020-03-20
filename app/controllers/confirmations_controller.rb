class ConfirmationsController < ApplicationController
  def update
    @booking = Booking.find(params[:booking_id])
    @booking.update(confirmed: true)

    redirect_to host_bookings_path(@booking.space.host)
  end
end
