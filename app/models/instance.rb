class Instance < ApplicationRecord
  has_many :sections
  has_and_belongs_to_many :creators
  
  accepts_nested_attributes_for :sections
end
