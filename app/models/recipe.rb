class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :meal

  validates :steps, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true
  validates :calories, :presence => true
  validates :fat, :presence => true
  validates :carbohydrates, :presence => true
  validates :protein, :presence => true
end
