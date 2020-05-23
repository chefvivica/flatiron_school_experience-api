class AvatarSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :name, :turns, :skills, :points 
end 