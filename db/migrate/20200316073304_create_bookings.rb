class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :client_name
      t.string :client_email
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
