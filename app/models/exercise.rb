class Exercise < ApplicationRecord
    belongs_to :workout 
    validates :description, presence: true 
end
