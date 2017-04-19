class Exercise < ApplicationRecord
  validates :name, :presence => true
  validates :description, :presence => true
  validates :muscles_worked, :presence => true
end
