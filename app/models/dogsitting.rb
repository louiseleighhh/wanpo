class Dogsitting < ApplicationRecord
  belongs_to :user
  geocoded_by :location
  validates :location, :availability, presence: true
  validates :rate, presence: true, numericality: { only_integer: true }
end
