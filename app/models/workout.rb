class Workout < ApplicationRecord
  has_many :lift_sets
  belongs_to :exercise_log

  validates :name, :null => false
  validates :description, :null => false
end
