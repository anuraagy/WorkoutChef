class Program < ApplicationRecord
  has_many :food_logs
  has_many :exercise_logs

  validates :start_date,    :presence => true
  validates :program_type,  :presence => true
  validates :goal_weight,   :presence => true
end
