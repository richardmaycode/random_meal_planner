class Meal < ApplicationRecord
  has_and_belongs_to_many :recipes
  has_and_belongs_to_many :sections
end
