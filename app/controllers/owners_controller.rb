class OwnersController < ApplicationController
    def index 
        @owners = Owner.all 
        render @owners 
    end 
    def show 
        @owner = Owner.find_by(id: params[:id])
        render @owner
    end 
    def new 
        @owner = Owner.new
    end 
    def create 
        @owner = Owner.create!(owner_params)
        render @owner
    end 
    def edit 
        @owner = Owner.find_by(id: params[:id])
    end
    def update 
        @owner = Owner.update(owner_params)
    end 
    def delete 
        @owner = Owner.find_by(id: params[:id])
        @owner.delete()
    end 
    private 
    def owner_params 
        params.require(:owner).permit(:first_name, :last_name, :username, :password)
    end
end
