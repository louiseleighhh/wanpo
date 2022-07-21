class PetsController < ApplicationController
  class PetsController < ApplicationController
    def new
      @pet = Pet.new(params[:pet_id])
    end

    def create
      @pet = Pet.new(pet_params)
      if @pet.save
        redirect_to pet_path(@pet)
      else
        render :new
      end
    end

    private

    def pet_params
      params.require(:pet).permit(:name, :age, :breed, :size, :comments)
    end
  end
end
