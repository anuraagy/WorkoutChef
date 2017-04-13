class Exercise < ApplicationRecord
  validate :name, :presence => true
  validate :description, :presence => true
  validate :muscles_worked, :presence => true
end
