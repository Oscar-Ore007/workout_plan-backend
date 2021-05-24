class Api::V1::ExercisesController < ApplicationController

    before_action :set_workout

    def index 
        @exercises = @workout.exercises
        render json: @exercises
    end 


    def show 
       @exercise = Exercise.find(params[:id])
       render json: @exercise
    end 

    def create
        @exercise = @workout.exercises.new(exercise_params)
        @exercise.save 
        render json: @exercise_params
    end 

    def destroy 
     
    end 

    private 

    def set_workout
        @workout = Workout.find(params[:account_id])
    end 

    def exercise_params 
        params.require(:exercise).permit(:workout_id, :reps, :sets, :date, :description)
    end 
end
