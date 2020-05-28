class UsersController < ApplicationController
    def index 
        users = User.all
        users.each do |user|
           user.avatars.sort_by{  | av | av[:points] }
        end
        render json: users.to_json(:include => {
            :avatars => {:only => [:name, :points, :turns, :id, :image_url, :created_at]}
        }, except: [:created_at, :updated_at])
    end 

    def new 
        User.new 
    end 

    def create 
        user = User.create(user_params)
        render json: user.to_json( except: [:created_at, :update_at])
    end 

    def show 
        user = User.find_by(id: params[:id])
        if user 
            user.avatars.sort_by{  | av | av[:points] }.reverse
        render json: user.to_json(:include => {
            :avatars => {:only => [:name, :points, :turns, :id, :image_url]}
        }, except: [:created_at, :updated_at])
        else render json: { message: 'User not found' }
        end 
    end 

    private 

    def user_params 
        params.require(:user).permit(:username)
    end 
end
