class Ingredient < ApplicationRecord
  belongs_to :recipe

  validate :name, :presence => true
  validate :description, :presence => true
  validate :calories, :presence => true
  validate :fat, :presence => true
  validate :carbohydrates, :presence => true
  validate :protein, :presence => true
end
