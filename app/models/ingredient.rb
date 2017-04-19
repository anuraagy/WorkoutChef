class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, :presence => true
  validates :description, :presence => true
  validates :calories, :presence => true
  validates :fat, :presence => true
  validates :carbohydrates, :presence => true
  validates :protein, :presence => true
end
