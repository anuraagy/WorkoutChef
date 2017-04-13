class FoodLog < ApplicationRecord
  has_many :meals
  belongs_to :user

  validate :date, :presence => true
end
