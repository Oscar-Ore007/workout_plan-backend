class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :reps, :sets, :date, :description, :workout_id
  belongs_to :workout 
end
