class Dogsitting < ApplicationRecord
  belongs_to :user
  validates :location, :availability, presence: true
  validates :rate, presence: true, numericality: { only_integer: true }
end
