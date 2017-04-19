class FoodLog < ApplicationRecord
  has_many :meals
  belongs_to :user

  validates :date, :presence => true
end
