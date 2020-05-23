class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json( except: [:created_at, :updated_at])
    end 

    def new 
        User.new 
    end 

    def create 
        user = User.create(user_params)
        render json: user.to_json( excet: [:created_at, :update_at])
    end 

    def show 
        user = User.find_by(id: params[:id])
        if user 
        render json: user.to_json( except: [:created_at, :updated_at])
        else render json: { message: 'User not found' }
        end 
    end 

    private 

    def user_params 
        params.require(:user).permit(:username)
    end 
end
