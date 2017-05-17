class ExerciseLog < ApplicationRecord
  has_many :workouts
  belongs_to :program

  validates :date, :presence => true
end
