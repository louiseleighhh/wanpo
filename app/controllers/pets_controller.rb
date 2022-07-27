class PetsController < ApplicationController

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

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to profile_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :comments, :photo)
  end

end
