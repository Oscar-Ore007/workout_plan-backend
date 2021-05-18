class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.integer :workout_id
      t.integer :reps
      t.integer :sets
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
