class Space < ApplicationRecord
  belongs_to :host
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :price_per_hour, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def unavailable_times
  #   bookings.pluck(:start_time, :end_time).map do |range|
  #     { from: range[0], to: range[1] }
  #   end
  # end
end
