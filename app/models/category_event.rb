class CategoryEvent < ApplicationRecord
  belongs_to :event
  belongs_to :category
end