class BookingsController < ApplicationController
  before_action :set_booking, only: [:update]
  before_action :find_booking, only: [:update, :edit, :destroy]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
    @dogsitting = Dogsitting.find(params[:dogsitting_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @dogsitting = Dogsitting.find(params[:dogsitting_id])
    @booking.dogsitting = @dogsitting
    @booking.status = 0
    if @booking.save
      redirect_to bookings_path
    else
      render 'dogsittings/show'
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def edit; end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :status)
  end

  def set_booking
    @bookings = Booking.find(params[:id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
