class LiftSet < ApplicationRecord
  belongs_to :workout
  validates :reps, :presence => true
  validates :exercise, :presence => true
end
