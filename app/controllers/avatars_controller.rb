class AvatarsController < ApplicationController
    def index 
        avatars = Avatar.all 
        render json: avatars.to_json( except: [:created_at, :updated_at])
    end 

    def new 
        Avatar.new 
    end 

    def create 
        avatar = Avatar.create(avatar_params)
        render json: avatar.to_json( excet: [:created_at, :update_at])
    end 

    def show 
        avatar = Avatar.find_by(id: params[:id])
        if avatar 
        render json: avatar.to_json( except: [:created_at, :updated_at])
        else render json: { message: 'Avatar not found' }
        end 
    end 

    def edit 
        avatar = Avatar.find(params[:id])
    end 

    def update 
        avatar = Avatar.find(params[:id])
        avatar.update(avatar_params)
    end 

    private 

    def avatar_params 
        params.require(:avatar).permit(:user_id, :name, :image_url, :turns, :points)
    end 
end
