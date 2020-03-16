class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :host, through: :space


end
