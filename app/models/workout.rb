class Workout < ApplicationRecord
    has_many :exercises
    validates :name, :duration, presence: true
end
