class PetsController < ApplicationController
    def index 
        @pets = Pet.all 
        render json: @pets 
    end 
    def show 
        @pet = Pet.find_by(id: params[:id])
        render json: @pet
    end 
    def new 
        @pet = Pet.new
    end 
    def create 
        @pet = Pet.create!(pet_params)
        render json: @pet
    end 
    def edit 
        @pet = Pet.find_by(id: params[:id])
    end
    def update 
        @pet = Pet.update(Pet_params)
        render json: @pet
    end 
    def delete 
        @pet = Pet.find_by(id: params[:id])
        @pet.delete()
    end 
    private 
    def pet_params 
        params.require(:pet).permit(:first_name, :last_name, :username, :password)
    end
end
