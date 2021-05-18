class Workout < ApplicationRecord
    has_many :exercises
    validates :name, :duration, presence: treuw
end
