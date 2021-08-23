class Exercise < ApplicationRecord
    belongs_to :workout 
    validates :reps, :sets, :date, :description, presence: true 
end


