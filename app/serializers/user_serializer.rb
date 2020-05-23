class Trainer < ActiveModel::Serializer
    attributes :id, :name 

    has_many :avatars 
end 