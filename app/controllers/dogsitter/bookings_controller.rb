class Dogsitter::BookingsController < ApplicationController
  def index
    @bookings = Booking.includes(:dogsitting).where(dogsittings: { user: current_user })
  end
end
