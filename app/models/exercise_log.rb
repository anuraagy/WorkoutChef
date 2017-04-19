class ExerciseLog < ApplicationRecord
  has_many :workouts
  belongs_to :user

  validates :date, :presence => true
end
