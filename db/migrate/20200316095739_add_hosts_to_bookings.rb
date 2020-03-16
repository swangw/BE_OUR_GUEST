class AddHostsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :host, foreign_key: true
  end
end
