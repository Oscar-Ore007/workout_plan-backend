class Api::V1::ExercisesController < ApplicationController

    # before_action :set_workout

    def index 
        @exercises = Exercise.all 
        render json: @exercises
    end 


    def show 
       @exercise = Exercise.find(params[:id])
       render json: @exercise
    end 

    def create
        @exercise = Exercise.new(exercise_params)
        if @exercise.save 
            render json: @exercise.workout
        else 
            render json: {error: 'Error creating piece'}
        end 
        # @exercise = @workout.exercises.new(exercise_params)
        # @exercise.save 
        # render json: @workout
    end 

    def edit 
        @exercise = Exercise.find(params[:id])
    end 

    def update 
        @exercise = Exercise.find(params[:id])
        if @exercise.update(exercise_params)
            render json: @exercise.workout 
        else 
            render json: {error: 'Error udating piece'}
        end 
    end 

    def destroy 
     @exercise = Exercise.find(params["id"])
     @workout = Workout.find(@exercise.workout_id)
     @exercise.destroy 
     render json: @workout 
    end 

    private 

    # def set_workout
    #     @workout = Workout.find(params[:account_id])
    # end 

    def exercise_params 
        params.require(:exercise).permit(:reps, :sets, :date, :description, :workout_id )
    end 
end
