class Meal < ApplicationRecord
  belongs_to :food_log
  has_many :recipes

  validates :type, :presence => true
end
