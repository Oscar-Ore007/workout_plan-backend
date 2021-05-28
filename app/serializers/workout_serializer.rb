class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration 
  has_many :exercises 
end
