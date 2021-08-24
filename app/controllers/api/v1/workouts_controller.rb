class Api::V1::WorkoutsController < ApplicationController

    def index 
        @workouts = Workout.all 
        render json: @workouts
    end 

    def create
        @workout = Workout.new(workout_params)
        if @workout.save 
            render json: @workout
        else
            render json: {error: 'Error creating workout '}
        end 
    end 

    def show 
        @workout = Workout.find(params[:id])
        render json: @workout 
    end 

    def update 
        @workout = Workout.find(params[:id])
        if @workout.update(workout_params)
            render json: @workout
        else 
            render json: {error: 'Error updating workout'}
        end 
    end 

    def destroy 
        @workout = Workout.find(params[:id])
        @workout.destroy 
    end 

    private 

    def workout_params 
        params.require(:workout).permit(:id, :name, :duration)
    end 

end
