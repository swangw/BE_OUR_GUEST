class Space < ApplicationRecord
  belongs_to :host
  has_many :bookings, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :price_per_hour, presence: true
end