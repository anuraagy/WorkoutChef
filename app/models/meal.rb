class Meal < ApplicationRecord
  belongs_to :food_log
  has_many :recipes

  validate :type, :presence => true
end
