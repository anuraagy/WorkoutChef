class ExerciseLog < ApplicationRecord
  has_many :workouts
  belongs_to :user

  validate :date, :presence => true
end
