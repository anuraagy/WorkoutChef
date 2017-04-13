class Workout < ApplicationRecord
  has_many :lift_sets
  belongs_to :exercise_log

  validate :name, :null => false
  validate :description, :null => false
end
