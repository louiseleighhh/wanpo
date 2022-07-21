class DogsittingsController < ApplicationController
  before_action :set_dogsitting, only: [:show]

  def index
    @dogsittings = Dogsitting.all
  end

  def show
  end

  def new
    @dogsitting = Dogsitting.new
  end

  def create
    @user = User.find(params[:user_id])
    @dogsitting = Dogsitting.new(dogsitting_params)
    @dogsitting.user = @user
    if @dogsitting.save
      redirect_to dogsitting_path(@dogsitting)
    else
      render :new
    end
  end

  private

  def set_dogsitting
    @dogsitting = Dogsitting.find(params[:id])
  end

  def dogsitting_params
    params.require(:dogsitting).permit(:location)
  end
end
