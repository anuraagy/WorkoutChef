class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :meal

  validate :steps, :presence => true
  validate :name, :presence => true
  validate :description, :presence => true
  validate :calories, :presence => true
  validate :fat, :presence => true
  validate :carbohydrates, :presence => true
  validate :protein, :presence => true
end
