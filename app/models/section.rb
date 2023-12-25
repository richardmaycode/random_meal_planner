class Section < ApplicationRecord
  belongs_to :instance
  has_and_belongs_to_many :meals
end
