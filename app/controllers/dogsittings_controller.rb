class DogsittingsController < ApplicationController
  before_action :set_dogsitting, only: [:show]

  def index
    if params[:query].present?
      @dogsittings = Dogsitting.global_search(params[:query])
    else
      @dogsittings = Dogsitting.all
    end
    @markers = @dogsittings.geocoded.map do |dogsitting|
      {
        lat: dogsitting.latitude,
        lng: dogsitting.longitude
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @dogsitting = Dogsitting.new
  end

  def create
    @dogsitting = Dogsitting.new(dogsitting_params)
    @dogsitting.user = current_user
    @dogsitting.location = current_user.location
    @dogsitting.day = params[:dogsitting][:day].compact_blank.join(', ')
    @dogsitting.availability = params[:dogsitting][:availability].compact_blank.join(', ')
    if @dogsitting.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def set_dogsitting
    @dogsitting = Dogsitting.find(params[:id])
  end

  def dogsitting_params
    params.require(:dogsitting).permit(:rate)
  end
end
