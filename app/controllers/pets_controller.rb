class PetsController < ApplicationController
  before_action :set_pet, only: [:edit, :update, :destroy]
  def new
    @pet = Pet.new
    # @pet = Pet.new(params[:pet_id])
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @pet.update(pet_params)
    redirect_to profile_path
  end

  def destroy
    @pet.destroy
    redirect_to profile_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :comments, :photo)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
