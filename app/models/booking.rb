class Booking < ApplicationRecord
  belongs_to :space
  validates :client_name, :client_email, :start_time, :end_time, presence: true

end
