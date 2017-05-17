class FoodLog < ApplicationRecord
  has_many :meals
  belongs_to :program

  validates :date, :presence => true
end
