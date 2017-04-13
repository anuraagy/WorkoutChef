class LiftSet < ApplicationRecord
  belongs_to :workout
  validate :reps, :presence => true
  validate :exercise, :presence => true
end
