class RemoveHostIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :host, foreign_key: true
  end
end
