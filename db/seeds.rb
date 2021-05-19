# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

workout = Workout.create(name: 'Leg Day', duration: 60)

exercise = Exercise.create(workout_id: 1, reps: 10, sets: 5, description: 'squats', date: Date.today)

exercise_two = Exercise.create(workout_id: 1, reps: 10, sets: 5, description: 'deadlifts', date: Date.today)
